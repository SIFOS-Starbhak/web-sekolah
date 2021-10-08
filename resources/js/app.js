require("./bootstrap");
require("alpinejs");
// require("./scripts");
require("./stisla");
require("./iziToast");
import axios from "axios";

document.addEventListener("DOMContentLoaded", () => {
    if (document.getElementById("frmlogin")) {
        document.getElementById("frmlogin").addEventListener("submit", (e) => {
            e.preventDefault();
            const frmData = new FormData(e.target);
            const user = Object.fromEntries(frmData);

            axios
                // .post(`http://127.0.0.1:8000/api/login`, user)
                // buat ip public
                .post(`http://117.102.67.70:8000/api/login`, user)
                .then((res) => {
                    console.log(res.data);
                    window.sessionStorage.setItem(
                        "token",
                        res.data.original_token.original.access_token
                    );
                    window.sessionStorage.setItem(
                        "auth_token",
                        res.data.auth_token
                    );
                    window.location.href = `${res.data.redirect}`;
                })
                .catch((err) => {
                    if (err.response) {
                        console.log(err.response.data);
                        document.getElementById(
                            "info"
                        ).innerHTML = `<div class="alert alert-warning alert-dismissible fade show" role="alert">
                            <strong>Opps!</strong> Something went wrong...
                                ${Object.values(err.response.data)
                                    .map((e) => `<li>${e}</li>`)
                                    .join("")}
                            <button type="button" class="btn-close" data-bs-dismiss="alert"
                                aria-label="Close"></button>
                        </div>`;
                    }
                });
        });
    } else {
        document.getElementById("frmlogout").addEventListener("click", (e) => {
            e.preventDefault();
            axios
              // .post(`http://127.0.0.1:8000/api/logout`)
                // buat ip public
                .post(`http://117.102.67.70:8000/api/logout`)
                .then((res) => {
                    console.log(res);
                    window.sessionStorage.removeItem("token");
                    window.sessionStorage.removeItem("auth_token");
                    window.location.href = "/";
                })
                .catch((err) => {
                    if (err.response) {
                        console.log(err.response.data);
                    }
                });
        });

        // Api Portal/Moodle
        document
            .getElementById("microWebPortal")
            .addEventListener("click", (e) => {
                e.preventDefault();
                window.location.href =
                    "http://localhost/Moodle-starbhak/login/index.php?token=" +
                    window.sessionStorage.getItem("token"); // href seuai sama url
            });

        // Api Sitakols
        document.getElementById("sitakols").addEventListener("click", (e) => {
            e.preventDefault();
            console.log("clicked");
            window.location.href =
                "http://127.0.0.1:8002/api/prakerin/" +
                window.sessionStorage.getItem("token"); // href seuai sama url
        });

        // Api Refleksi
        document.getElementById("refleksi").addEventListener("click", (e) => {
            e.preventDefault();
            console.log("clicked");
            window.location.href =
                "http://127.0.0.1:8001/authentication/" +
                window.sessionStorage.getItem("token"); // href seuai sama url
        });
    }
});
