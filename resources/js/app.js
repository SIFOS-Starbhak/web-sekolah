require("./bootstrap");

require("alpinejs");

import axios from "axios";
// var token = null;

document.addEventListener("DOMContentLoaded", () => {
    if (document.getElementById("frmlogin")) {
        document.getElementById("frmlogin").addEventListener("submit", (e) => {
            e.preventDefault();
            const frmData = new FormData(e.target);
            const user = Object.fromEntries(frmData);

            axios
                .post(`${process.env.MIX_APP_URL}/api/login`, user)
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
                .post(`${process.env.MIX_APP_URL}/api/logout`)
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
        document
            .getElementById("microWebPortal")
            .addEventListener("click", (e) => {
                e.preventDefault();
                axios
                    .post("http://localhost/moodle/login/index.php", {
                        token: window.sessionStorage.getItem("token"),
                        auth_token: window.sessionStorage.getItem("auth_token"),
                    })
                    .then((res) => {
                        console.log(res.);
                    })
                    .catch((err) => {
                        console.log(err);
                    });
            });
    }
});
