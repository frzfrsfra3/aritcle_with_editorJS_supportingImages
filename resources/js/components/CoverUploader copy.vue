<template>
    <label for="cover" class="cover_label">
        <img style="height: 500px; width: 700px; display: block;" :src="image" alt="Card image" class="mx-auto">
        <!-- <input type="file" name="cover" ref="cover" hidden @change="upload" id="cover"> -->
                  <a href="#" @click="editModal(user)">
                                            <i class="fa fa-edit blue"></i>
                                        </a>
                                          <div
            class="modal fade"
            id="addNew"
            tabindex="-1"
            role="dialog"
            aria-labelledby="addNewLabel"
            aria-hidden="true"
        >
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5
                            class="modal-title"
                            id="addNewLabel"
                            v-show="!editmode"
                        >
                            Add New User
                        </h5>
                        <h5
                            class="modal-title"
                            id="addNewLabel"
                            v-show="editmode"
                        >
                            Update User
                        </h5>
                        <button
                            type="button"
                            class="close"
                            data-dismiss="modal"
                            aria-label="Close"
                        >
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form
                        @submit.prevent="editmode ? updateUser() : createUser()"
                    >
                        <div class="modal-body">
                            <div class="form-group">
                                <input
                                    v-model="form.name"
                                    type="text"
                                    name="name"
                                    placeholder="Enter user"
                                />
                                <div
                                    v-if="form.errors.has('name')"
                                    v-html="form.errors.get('name')"
                                />
                            </div>
                            <div class="form-group">
                                <input
                                    v-model="form.email"
                                    type="text"
                                    name="email"
                                    placeholder="Email Address"
                                />
                                <div
                                    v-if="form.errors.has('email')"
                                    v-html="form.errors.get('email')"
                                />
                            </div>
                            <div class="form-group">
                                <input
                                    v-model="form.bio"
                                    type="text"
                                    name="bio"
                                    placeholder="short bio for user"
                                />
                                <div
                                    v-if="form.errors.has('bio')"
                                    v-html="form.errors.get('bio')"
                                />
                            </div>
                            <div class="form-group">
                                <select
                                    name="type"
                                    v-model="form.type"
                                    id="type"
                                    class="form-control"
                                    :class="{
                                        'is-invalid': form.errors.has('type')
                                    }"
                                >
                                    <option value="">Select User Role </option>
                                    <option value="admin">Admin </option>
                                    <option value="user">Standard User </option>
                                    <option value="author"> Author </option>
                                </select>
                                <div
                                    v-if="form.errors.has('type')"
                                    v-html="form.errors.get('type')"
                                />
                                <!-- <has-error :form="form" field="type"></has-error> -->
                            </div>
                            <div class="form-group">
                                <input
                                    @change="updateProfile"
                                    type="file"
                                    name="photo"
                                />
                                <img
                                    class="img-circle"
                                    :src="getProfilePhoto()"
                                    width="50px"
                                    height="30px"
                                    alt="User Avatar"
                                />
                                <div
                                    v-if="form.errors.has('photo')"
                                    v-html="form.errors.get('photo')"
                                />
                            </div>

                            <div class="form-group">
                                <input
                                    v-model="form.password"
                                    type="password"
                                    name="password"
                                    placeholder="Enter Password"
                                    class="form-control"
                                    :class="{
                                        'is-invalid': form.errors.get(
                                            'password'
                                        )
                                    }"
                                />
                                <div
                                    v-if="form.errors.has('password')"
                                    v-html="form.errors.get('password')"
                                />
                                <!-- <div v-if="form.errors.has('password')" v-html="form.errors.has('password')" /> -->
                                <!-- <has-error :form="form" field="password"></has-error> -->
                            </div>
                        </div>

                        <div class="modal-footer">
                            <button
                                type="button"
                                class="btn btn-danger"
                                data-dismiss="modal"
                            >
                                Close
                            </button>
                            <button
                                v-show="editmode"
                                type="submit"
                                class="btn btn-success"
                            >
                                Update
                            </button>
                            <button
                                v-show="!editmode"
                                type="submit"
                                class="btn btn-primary"
                            >
                                Create
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </label>
</template>

<script>
    export default {
        name: "CoverUploader",
        props: {
            cover: {
                type: String,
                required: false
            }
        },
        data() {
            return {
                image: "data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22318%22%20height%3D%22180%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20318%20180%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_158bd1d28ef%20text%20%7B%20fill%3Argba(255%2C255%2C255%2C.75)%3Bfont-weight%3Anormal%3Bfont-family%3AHelvetica%2C%20monospace%3Bfont-size%3A16pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_158bd1d28ef%22%3E%3Crect%20width%3D%22318%22%20height%3D%22180%22%20fill%3D%22%23777%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%22129.359375%22%20y%3D%2297.35%22%3ECover%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E"
            }
        },
        methods: {
            editModal(user) {
            // this.editmode = true;
            // this.form.reset();
            $("#addNew").modal("show");
            // this.form.fill(user);
        },
            upload() {
                this.showImage();
                this.dispatchImage();
            },
            showImage() {
                let reader = new FileReader();
                reader.onload = (event) => {
                    this.image = event.target.result;
                };
                reader.readAsDataURL(this.$refs.cover.files[0]);
            },
            dispatchImage() {
                this.$emit("loaded", this.$refs.cover.files[0]);
            }
        },
        watch: {
            "cover"(newValue, oldValue) {
                if(newValue !== "") {
                    this.image = newValue;
                }
            }
        }
    }
</script>

<style scoped>
    .cover_label {
        position: relative;
    }

    .cover_label:hover {
        cursor: pointer;
    }

    .cover_label:after {
        content: "";
        position: absolute;
        width: 100%;
        height: 100%;
        transition: background-color 0.3s;
        top: 0;
    }

    .cover_label:hover:after {
        background-color: rgba(0, 0, 0, 0.5);
    }

</style>
