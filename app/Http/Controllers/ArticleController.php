<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Post;
use App\Models\Category;
use Illuminate\Support\Facades\Auth;
use File;

class ArticleController extends Controller
{
    public function index()
    {
        return view('article.index');
    }

    public function tambah()
    {

        $categories = Category::all();
        // dd($categories->page);
        // $pages = Page::has('category')->where('')

        return view('article.tambah', compact('categories'));
    }
    public function store(Request $request)
    {
        // dd($request);
        $request->validate([
            'category' => 'required',
            'title' => 'required|unique:posts|max:100',
            'seo_title' => 'required|unique:posts|max:60',
            'description' => 'required',
            'image' => 'required',
        ], [
            'required' => 'Tidak Boleh Kosong!',
            'unique' => 'Sudah ada tidak boleh sama!'
        ]);
        $description = strip_tags($request->description);
        $str = str_replace('&nbsp;', '', $description);
        $meta_description = html_entity_decode($str);
        // $string = str_replace(' ', '', $string);
        $slug = str_replace(' ', '-', $request->title);
        // dd($request,$description,$meta_description,$slug);
        $nm = $request->image;
        $namafile = $nm->getClientOriginalName();
        $nm->move(public_path() . '/article-img', $namafile);

        Post::create([
            'author_id' => Auth::guard('manager')->id(),
            'category_id' => $request->category,
            'title' => $request->title,
            'seo_title' => $request->seo_title,
            'excerpt' => null,
            'body' => $request->description,
            'image' => $namafile,
            'slug' => $slug,
            'meta_description' => $meta_description,
            'meta_keywords' => 'default',
            'status' => 'PUBLISHED',
            'featured' => 1,
        ]);

        // return Redirect::to('/')->with($notification);
        return redirect()->route('dashboard.manager')->with('message', 'Berhasil memposting Artikel');
    }
    public function edit($id)
    {

        $article =  Post::where('id', $id)->first();
        $categories = Category::all();

        return view('article.edit', compact('article', 'categories'));
    }



    public function update(Request $request, $id)
    {
        // dd($request->image);

        if ($request->image == null) {
            $img =  Post::where('id', $id)->first();
            // dd($img->image);
            $description = strip_tags($request->description);
            $str = str_replace('&nbsp;', '', $description);
            $meta_description = html_entity_decode($str);
            // $string = str_replace(' ', '', $string);
            $slug = str_replace(' ', '-', $request->title);
            // dd($request,$description,$meta_description,$slug);
            // $nm = $request->image;
            // $namafile = $nm->getClientOriginalName();
            // $nm->move(public_path().'/article-img',$namafile);
            Post::where('id', $id)->update([
                'author_id'        => Auth::guard('manager')->id(),
                'category_id'      => $request->category,
                'title'            => $request->title,
                'seo_title'        => $request->seo_title,
                'excerpt'          => null,
                'body'             => $request->description,
                // 'image'            => $namafile,
                'slug'             => $slug,
                'meta_description' => $meta_description,
                'meta_keywords'    => 'default',
                'status'           => 'PUBLISHED',
                'featured'         => 1,
            ]);
            return redirect()->route('dashboard.manager')->with('message', 'Berhasil update Artikel');
            // dd('File does not exists.');
            // return redirect()->back()->with('fail','Gagal di  Hapus  ');
        } else {
            $img =  Post::where('id', $id)->first();
            if (File::exists(public_path('article-img/' . $img->image))) {
                File::delete(public_path('article-img/' . $img->image));
                $img =  Post::where('id', $id)->first();
                // dd($img->image);
                $description = strip_tags($request->description);
                $str = str_replace('&nbsp;', '', $description);
                $meta_description = html_entity_decode($str);
                // $string = str_replace(' ', '', $string);
                $slug = str_replace(' ', '-', $request->title);
                // dd($request,$description,$meta_description,$slug);
                $nm = $request->image;
                $namafile = $nm->getClientOriginalName();
                $nm->move(public_path() . '/article-img', $namafile);
                Post::where('id', $id)->update([
                    'author_id'        => Auth::guard('manager')->id(),
                    'category_id'      => $request->category,
                    'title'            => $request->title,
                    'seo_title'        => $request->seo_title,
                    'excerpt'          => null,
                    'body'             => $request->description,
                    'image'            => $namafile,
                    'slug'             => $slug,
                    'meta_description' => $meta_description,
                    'meta_keywords'    => 'default',
                    'status'           => 'PUBLISHED',
                    'featured'         => 1,
                ]);
                return redirect()->route('dashboard.manager')->with('message', 'Berhasil update Artikel');
                // Post::where('id',$id)->delete();
                // return redirect()->back()->with('pesan','Berhasil Hapus Article ');
            }
        }
        // dd($id);
    }



    public function delete($id)
    {
        $img =  Post::where('id', $id)->first();
        // dd($img->image);

        if (File::exists(public_path('article-img/' . $img->image))) {
            File::delete(public_path('article-img/' . $img->image));

            Post::where('id', $id)->delete();
            // return Redirect::to('/')->with($notification);
            // return redirect()->route('dashboard.manager')->;
            return redirect()->back()->with('message', 'Berhasil menghapus Artikel');
        } else {
            // dd('File does not exists.');
            Post::where('id', $id)->delete();
            return redirect()->back();
        }


        // dd($id);
    }

    public function draftOrPublised($id)
    {
        // dd($id);
        $checkStatus =  Post::where('id', $id)->first();

        if ($checkStatus->status == 'PUBLISHED') {
            Post::where('id', $id)->update([
                'status'           => 'DRAFT',
            ]);
            return redirect()->back()->with('message', 'Berhasil menjadi Draft');
        } else {
            Post::where('id', $id)->update([
                'status'           => 'PUBLISHED',
            ]);
            return redirect()->back()->with('message', 'Berhasil Publish');
        }
    }
}
