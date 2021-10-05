<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
    <title>Login</title>

    <!-- General CSS Files -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
    <script src="{{ asset('js/app.js') }}" defer></script>

</head>

<body>
    <section class="vh-100">
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-6 px-0 d-none d-sm-block">
                    <img src="{{ asset('img/bg-tb.png') }}" alt="Login image" class="w-100 vh-100"
                        style="object-fit: cover; object-position: left;">
                </div>
                <div class="col-sm-6 text-black">
                    <div class="px-5 ms-xl-4 me-3 pt-5 mt-xl-4">
                        <img src="{{ asset('img/logo-starbhak.png') }}" alt="logo" style="width: 100px">
                    </div>
                    <div class="d-grid align-items-center h-custom-2 px-5 ms-xl-4 mt-5 pt-5 pt-xl-0 mt-xl-n5">
                        <span id="info"></span>
                        <form id="frmlogin" style="width: 23rem;" method="POST" onsubmit="event.preventDefault();">
                            <h3 class="fw-bold mb-3 pb-3" style="letter-spacing: 1px;">Log in</h3>
                            <div class="form-outline mb-4">
                                <input type="text" id="username" name="username"
                                    class="form-control form-control-lg" />
                                <label class="form-label">Username</label>
                            </div>
                            <div class="form-outline mb-4">
                                <input type="password" name="password" class="form-control form-control-lg"
                                    autocomplete="off" />
                                <label class="form-label">Password</label>
                            </div>
                            <div class="pt-1 mb-4">
                                <button class="btn btn-primary btn-lg btn-block" type="submit">Login</button>
                            </div>
                            <p class="small mb-5 pb-lg-2"><a class="text-muted" href="">Forgot password?</a></p>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous">
    </script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <!-- JS Libraies -->

    <!-- Page Specific JS File -->
</body>

</html>
