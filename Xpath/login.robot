*** Variables ***
${username}                     //input[@id='email']
${pwd}                          //input[@type='password']
${btnSubmit}                    //button[@class='btn']
${Verify_Home_Admin}            //span[text()='User Administrator']
${Verify_Profile}               css= .profile-button
${blank_pwd}                    //ngb-alert[text()='Password tidak boleh kosong']
${blank_usr}                    //ngb-alert[text()='Email Tidak Boleh Kosong']
${blank_usr_pwd}                //ngb-alert[text()='Form tidak boleh kosong']
${usr_tdk_diketahui}            //ngb-alert[text()='Pengguna tidak diketahui']