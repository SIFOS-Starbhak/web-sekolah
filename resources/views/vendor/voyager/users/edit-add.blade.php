@extends('voyager::master')

@section('page_title', __('voyager::generic.'.(isset($dataTypeContent->id) ? 'edit' : 'add')).'
    '.$dataType->getTranslatedAttribute('display_name_singular'))

@section('css')
    <meta name="csrf-token" content="{{ csrf_token() }}">
@stop

@section('page_header')
    <h1 class="page-title">
        <i class="{{ $dataType->icon }}"></i>
        {{ __('voyager::generic.' . (isset($dataTypeContent->id) ? 'edit' : 'add')) . ' ' . $dataType->getTranslatedAttribute('display_name_singular') }}
    </h1>
@stop

@section('content')
    <div class="page-content container-fluid">
        <form class="form-edit-add" role="form" action="@if (!is_null($dataTypeContent->getKey())){{ route('voyager.' . $dataType->slug . '.update', $dataTypeContent->getKey()) }}@else{{ route('voyager.' . $dataType->slug . '.store') }}@endif" method="POST"
            enctype="multipart/form-data" autocomplete="off">
            <!-- PUT Method if we are editing -->
            @if (isset($dataTypeContent->id))
                {{ method_field('PUT') }}
            @endif
            {{ csrf_field() }}
            <div class="row">
                <div class="col-md-8">
                    <div class="panel panel-bordered">
                        {{-- <div class="panel"> --}}
                        @if (count($errors) > 0)
                            <div class="alert alert-danger">
                                <ul>
                                    @foreach ($errors->all() as $error)
                                        <li>{{ $error }}</li>
                                    @endforeach
                                </ul>
                            </div>
                        @endif

                        <div class="panel-body">
                            <div class="form-group">
                                <label for="nomor_induk">{{ __('nomor induk') }}</label>
                                <input type="text" class="form-control" id="nomor_induk" name="nomor_induk"
                                    placeholder="{{ __('nomor induk') }}"
                                    value="{{ old('nomor_induk', $dataTypeContent->nomor_induk ?? '') }}">
                            </div>

                            <div class="form-group">
                                <label for="name">{{ __('voyager::generic.name') }}</label>
                                <input type="text" class="form-control" id="name" name="name"
                                    placeholder="{{ __('voyager::generic.name') }}"
                                    value="{{ old('name', $dataTypeContent->name ?? '') }}">
                            </div>

                            <div class="form-group">
                                <label for="email">{{ __('voyager::generic.email') }}</label>
                                <input type="email" class="form-control" id="email" name="email"
                                    placeholder="{{ __('voyager::generic.email') }}"
                                    value="{{ old('email', $dataTypeContent->email ?? '') }}">
                            </div>

                            <div class="form-group">
                                <label for="password">{{ __('voyager::generic.password') }}</label>
                                @if (isset($dataTypeContent->password))
                                    <br>
                                    <small>{{ __('voyager::profile.password_hint') }}</small>
                                @endif
                                <input type="password" class="form-control" id="password" name="password" value=""
                                    autocomplete="new-password">
                            </div>

                            @can('editRoles', $dataTypeContent)
                                <div class="form-group">
                                    <label for="default_role">{{ __('voyager::profile.role_default') }}</label>
                                    @php
                                        $dataTypeRows = $dataType->{isset($dataTypeContent->id) ? 'editRows' : 'addRows'};

                                        $row = $dataTypeRows->where('field', 'user_belongsto_role_relationship')->first();
                                        $options = $row->details;
                                    @endphp
                                    @include('voyager::formfields.relationship')
                                </div>
                                <div class="form-group">
                                    <label for="additional_roles">{{ __('voyager::profile.roles_additional') }}</label>
                                    @php
                                        $row     = $dataTypeRows->where('field', 'user_belongstomany_role_relationship')->first();
                                        $options = $row->details;
                                    @endphp
                                    @include('voyager::formfields.relationship')
                                </div>

                            @endcan

                                <div class="form-group" id="kelas">
                                    <label for="kelas_siswa">{{ __('kelas siswa') }}</label>
                                    @php
                                        $dataTypeRows = $dataType->{isset($dataTypeContent->id) ? 'editRows' : 'addRows'};
                                        $row = $dataTypeRows->where('field', 'user_belongsto_kela_relationship')->first();

                                        $options = $row->details;
                                    @endphp
                                    @include('voyager::formfields.relationship')
                                </div>
                            <div class="form-group " id="spesifc_guru">
                                {{-- <label for="spesifc_role">{{ __('spesifik role') }}</label>
                                <input type="text" class="form-control" id="spesifc_role" name="spesifc_role"
                                    placeholder="{{ __('spesifik role') }}"
                                    value="{{ old('spesifc_role', $dataTypeContent->spesifc_role ?? '') }}"> --}}

                                <div class="form-group">
                                    <label for="role_spesifc_guru">Jabatan Guru</label>
                                    <select class="form-control select2" id="role_spesifc_guru" name="spesifc_role">
                                        {{-- <option value="" >{{ $dataTypeContent->spesifc_role }}</option> --}}
                                        <option value="admin" {{ ($dataTypeContent->spesifc_role == "admin") ? "selected" : ""   }}>Admin</option>
                                        <option value="litbang" {{ ($dataTypeContent->spesifc_role == "litbang") ? "selected" : ""   }}>Litbang</option>
                                        <option value="tu" {{ ($dataTypeContent->spesifc_role == "tu") ? "selected" : ""   }}>Tata Usaha</option>
                                        <option value="kaprog"{{ ($dataTypeContent->spesifc_role == "kaprog") ? "selected" : ""   }}>Kepala Program</option>
                                        <option value="kepsek" {{ ($dataTypeContent->spesifc_role == "kepsek") ? "selected" : ""   }}>Kepala Sekolah</option>
                                        <option value="waka" {{ ($dataTypeContent->spesifc_role == "waka") ? "selected" : ""   }}>Wakil Kepala Sekolah</option>
                                        <option value="bkk" {{ ($dataTypeContent->spesifc_role == "bkk") ? "selected" : ""   }}>BKK</option>
                                        <option value="hubin" {{ ($dataTypeContent->spesifc_role == "hubin") ? "selected" : ""   }}>Hubin</option>
                                        <option value="kurikulum" {{ ($dataTypeContent->spesifc_role == "kurikulum") ? "selected" : ""   }}>Kurikulum</option>
                                        <option value="kesiswaan" {{ ($dataTypeContent->spesifc_role == "kesiswaaan") ? "selected" : ""   }}>Kesiswaaan</option>
                                        <option value="sarpras" {{ ($dataTypeContent->spesifc_role == "sarpras") ? "selected" : ""   }}>Sarpras</option>
                                        <option value="Kejuruan" {{ ($dataTypeContent->spesifc_role == "kejuruan") ? "selected" : ""   }} >Kejuruan</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group " id="spesifc_normaluser">
                                <div class="form-group " id="role_spesifc_normaluser">
                                    <div class="form-group">
                                        <label for="role_spesifc_normaluser">Normal User</label>
                                        <select class="form-control select2" id="role_spesifc_normaluser" name="spesifc_role">
                                            <option value="panitia" {{ ($dataTypeContent->spesifc_role == "panitia") ? "selected" : ""   }}>Panitia</option>
                                        </select>
                                    </div>
                                
                                </div>
                            
                            </div>

                            
                            @php
                                if (isset($dataTypeContent->locale)) {
                                    $selected_locale = $dataTypeContent->locale;
                                } else {
                                    $selected_locale = config('app.locale', 'en');
                                }

                            @endphp
                            <div class="form-group">
                                <label for="locale">{{ __('voyager::generic.locale') }}</label>
                                <select class="form-control select2" id="locale" name="locale">
                                    @foreach (Voyager::getLocales() as $locale)
                                        <option value="{{ $locale }}"
                                            {{ $locale == $selected_locale ? 'selected' : '' }}>{{ $locale }}
                                        </option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="panel panel panel-bordered panel-warning">
                        <div class="panel-body">
                            <div class="form-group">
                                @if (isset($dataTypeContent->avatar))
                                    <img src="{{ filter_var($dataTypeContent->avatar, FILTER_VALIDATE_URL) ? $dataTypeContent->avatar : Voyager::image($dataTypeContent->avatar) }}"
                                        style="width:200px; height:auto; clear:both; display:block; padding:2px; border:1px solid #ddd; margin-bottom:10px;" />
                                @endif
                                <input type="file" data-name="avatar" name="avatar">
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <button type="submit" class="btn btn-primary pull-right save">
                {{ __('voyager::generic.save') }}
            </button>
        </form>

        <iframe id="form_target" name="form_target" style="display:none"></iframe>
        <form id="my_form" action="{{ route('voyager.upload') }}" target="form_target" method="post"
            enctype="multipart/form-data" style="width:0px;height:0;overflow:hidden">
            {{ csrf_field() }}
            <input name="image" id="upload_file" type="file" onchange="$('#my_form').submit();this.value='';">
            <input type="hidden" name="type_slug" id="type_slug" value="{{ $dataType->slug }}">
        </form>
    </div>
@stop

@section('javascript')
    <script>
        const showHideInput = () => {
                let val = $('[name="role_id"]').children("option").filter(":selected").text();
                if (val.toLowerCase() === 'siswa'){
                    $('#role_spesifc_guru').empty()
                    $('#spesifc_guru').hide()
                    $('#role_spesifc_normaluser').empty()
                    $('#spesifc_normaluser').hide()
                    $('#kelas').show()
                }else if(val.toLowerCase() ==='guru'){
                    $('#kelas').hide()
                    $('#spesifc_normaluser').hide()
                    $('#role_spesifc_normaluser').empty()
                    if ($('#role_spesifc_guru').is(":empty")) {
                        
                       var html = '<div class="form-group">';
                        html +='<label for="role_spesifc_guru">Jabatan Guru</label>'; 
                        html +='<select class="form-control select2" id="role_spesifc_guru" name="spesifc_role">';
                        html +='<option value="admin" {{ ($dataTypeContent->spesifc_role == "admin") ? "selected" : ""   }}>Admin</option>';
                        html +='<option value="litbang" {{ ($dataTypeContent->spesifc_role == "litbang") ? "selected" : ""   }}>Litbang</option>';
                        html +='<option value="tu" {{ ($dataTypeContent->spesifc_role == "tu") ? "selected" : ""   }}>Tata Usaha</option>';
                        html +='<option value="kaprog"{{ ($dataTypeContent->spesifc_role == "kaprog") ? "selected" : ""   }}>Kepala Program</option>';
                        html +='<option value="kepsek" {{ ($dataTypeContent->spesifc_role == "kepsek") ? "selected" : ""   }}>Kepala Sekolah</option>';
                        html +='<option value="waka" {{ ($dataTypeContent->spesifc_role == "waka") ? "selected" : ""   }}>Wakil Kepala Sekolah</option>';
                        html +='<option value="bkk" {{ ($dataTypeContent->spesifc_role == "bkk") ? "selected" : ""   }}>BKK</option>';
                        html +='<option value="hubin" {{ ($dataTypeContent->spesifc_role == "hubin") ? "selected" : ""   }}>Hubin</option>';
                        html +='<option value="kurikulum" {{ ($dataTypeContent->spesifc_role == "kurikulum") ? "selected" : ""   }}>Kurikulum</option>';
                        html +='<option value="kesiswaan" {{ ($dataTypeContent->spesifc_role == "kesiswaaan") ? "selected" : ""   }}>Kesiswaaan</option>';
                        html +='<option value="sarpras" {{ ($dataTypeContent->spesifc_role == "sarpras") ? "selected" : ""   }}>Sarpras</option>';
                        html +='<option value="Kejuruan" {{ ($dataTypeContent->spesifc_role == "kejuruan") ? "selected" : ""   }} >Kejuruan</option>';
                        html +='</select>';
                        html +='</div>'
                        
                        $('#spesifc_guru').show().html(html)
                    }
                }else if(val.toLowerCase() ==='manager'){
                    $('#kelas').hide()
                    $('#spesifc_normaluser').hide()
                    $('#role_spesifc_normaluser').empty()
                    if ($('#role_spesifc_guru').is(":empty")) {
                        
                       var html = '<div class="form-group">';
                        html +='<label for="role_spesifc_guru">Jabatan Guru</label>'; 
                        html +='<select class="form-control select2" id="role_spesifc_guru" name="spesifc_role">';
                        html +='<option value="admin" {{ ($dataTypeContent->spesifc_role == "admin") ? "selected" : ""   }}>Admin</option>';
                        html +='<option value="litbang" {{ ($dataTypeContent->spesifc_role == "litbang") ? "selected" : ""   }}>Litbang</option>';
                        html +='<option value="tu" {{ ($dataTypeContent->spesifc_role == "tu") ? "selected" : ""   }}>Tata Usaha</option>';
                        html +='<option value="kaprog"{{ ($dataTypeContent->spesifc_role == "kaprog") ? "selected" : ""   }}>Kepala Program</option>';
                        html +='<option value="kepsek" {{ ($dataTypeContent->spesifc_role == "kepsek") ? "selected" : ""   }}>Kepala Sekolah</option>';
                        html +='<option value="waka" {{ ($dataTypeContent->spesifc_role == "waka") ? "selected" : ""   }}>Wakil Kepala Sekolah</option>';
                        html +='<option value="bkk" {{ ($dataTypeContent->spesifc_role == "bkk") ? "selected" : ""   }}>BKK</option>';
                        html +='<option value="hubin" {{ ($dataTypeContent->spesifc_role == "hubin") ? "selected" : ""   }}>Hubin</option>';
                        html +='<option value="kurikulum" {{ ($dataTypeContent->spesifc_role == "kurikulum") ? "selected" : ""   }}>Kurikulum</option>';
                        html +='<option value="kesiswaan" {{ ($dataTypeContent->spesifc_role == "kesiswaaan") ? "selected" : ""   }}>Kesiswaaan</option>';
                        html +='<option value="sarpras" {{ ($dataTypeContent->spesifc_role == "sarpras") ? "selected" : ""   }}>Sarpras</option>';
                        html +='<option value="Kejuruan" {{ ($dataTypeContent->spesifc_role == "kejuruan") ? "selected" : ""   }} >Kejuruan</option>';
                        html +='</select>';
                        html +='</div>'
                        
                        $('#spesifc_guru').show().html(html)
                    }
                    
                    // $('#spesifc_guru').show()
                    // $('#role_spesifc_guru').show()
                }else if(val.toLowerCase() ==='normal user'){
                    $('#kelas').hide()
                    $('#spesifc_guru').hide()
                    $('#role_spesifc_guru').empty()
                    // $('#role_spesifc_normaluser').show()
                    if ($('#role_spesifc_normaluser').is(":empty")) {
                        $('#spesifc_normaluser').show().html('<div class="form-group " id="role_spesifc_normaluser"><div class="form-group"><label for="role_spesifc_normaluser">Normal User</label><select class="form-control select2" id="role_spesifc_normaluser" name="spesifc_role"><option value="panitia" {{ ($dataTypeContent->spesifc_role == "panitia") ? "selected" : ""   }}>Panitia</option></select></div></div>')
                        
                    }
                }
                else{
                    $('#kelas').hide()
                    $('#role_spesifc_guru').empty()
                    $('#spesifc_guru').hide()
                    $('#role_spesifc_normaluser').empty()
                    $('#spesifc_normaluser').hide()
            }
            }
       
            $('[name="role_id"]').change(function (e) {
                showHideInput();
            })

        $(document).ready(function() {

            $('#kelas').hide();
            $('#role_spesifc').hide();
            $('#role_spesifc_guru').hide();
            $('#role_spesifc_normaluser').hide();
            $('.toggleswitch').bootstrapToggle();
            $('[name="role_id"]').change(showHideInput());

        });
    </script>
@stop
