



    <section class="section">
      <div class="section-header">
        <h1>Article</h1>
       
      </div>

      <div class="section-body">
        <div class="row">
          @foreach ($pembayaran as $data)
          <div class="col-12 col-sm-6 col-md-6 col-lg-3">
            <article class="article article-style-b">
                <div class="article-header">
                    <div class="article-image" data-background="{{}}">
                    </div>
                    <div class="article-badge">
                        <div class="article-badge-item bg-danger"><i class="fas fa-fire"></i> Trending</div>
                    </div>
                </div>
                <div class="article-details">
                    <div class="article-category"><a href="#">News</a> <div class="bullet"></div> <a href="#">5 Days</a></div>
                    <div class="article-title">
                        <h2><a href="#">Excepteur sint occaecat cupidatat non proident</a></h2>
                    </div>
                    <p>Duis aute irure dolor in reprehenderit in voluptate velit esse
                        cillum dolore eu fugiat nulla pariatur. </p>
                    <div class="article-cta">
                        <a href="#">Read More <i class="fas fa-chevron-right"></i></a>
                    </div>
                </div>
            </article>
        </div>
          @endforeach
        </div>
      </div>
    </section>