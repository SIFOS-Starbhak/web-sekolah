require("./bootstrap");

require("alpinejs");

import axios from "axios";
// document.getElementById('frmlogout').addEventListener('click', async () => {
//     await axios.get()
// })
// var token = null;

document.addEventListener("DOMContentLoaded", () => {
    if (document.getElementById("frmlogin")) {
        document.getElementById("frmlogin").addEventListener("submit", () => {
            var bodyFormData = new FormData();
            bodyFormData.append(
                "username",
                document.getElementById("username").value
            );
            bodyFormData.append(
                "password",
                document.getElementById("password").value
            );

            axios
                .post(`${process.env.MIX_APP_URL}/api/login`, bodyFormData)
                .then((res) => {
                    console.log(res);
                    // XXX: BAGAI MANA CARANYA HILANGIN TOKEN DI GET?
                    window.location.href = `${res.data.redirect}?token=${res.data[0].original.access_token}`;
                })
                .catch((err) => {
                    if (err.response) {
                        console.log(err.response.data);
                        document.getElementById(
                            "info"
                        ).innerHTML = `<div class="alert alert-warning alert-dismissible fade show" role="alert">
                            <strong>Opps!</strong> Something went wrong...
                                ${Object.values(err.response.data)
                                    .map((e) => {
                                        return `<li>${e}</li>`;
                                    })
                                    .join("")}
                            <button type="button" class="btn-close" data-bs-dismiss="alert"
                                aria-label="Close"></button>
                        </div>`;
                    }
                });
        });
    }
});
