@extends('layouts.app')
@section('title', 'Projects | FOTrack')
@section('content')

<div class="xCPtuxM4_gihvpPwv9bX t6gkcSf0Bt4MLItXvDJ_ Nu4HUn5EQpnNJ1itNkrd iHPddplqYvrN6qWgvntn AqVNvLG_H6VHhym2yKMp">
<div class="NM7Z1HBVjN_86WhEcXan mveJTCIb2WII7J4sY22F pXhVRBC8yaUNllmIWxln qUWbS_LTZujDB4XCd11V _Ybd3WwuTVljUT4vEaM3 IvHclGgvMLtYg_ow0uba fzhbbDQ686T8arwvi_bJ _fGhMnSfYmaGrv7DvZ00 _1jTZ8KXRZul60S6czNi">
<div class="container mx-auto px-4 sm:px-8">

    <div class="py-8">
        <div class="flex justify-between items-center mb-4">
            <h1 class="text-2xl font-semibold leading-tight">Manage Projects</h1>
            <button id="openModalBtn" type="button" class="custom-btn-submit">
                <i class="fa-solid fa-plus"></i> Add New Project
            </button>

        </div>
        <div class="overflow-x-auto">
            <table id="datatable" class="table-auto w-full border-collapse border border-gray-300">
                <thead class="bg-gray-200">
                    <tr class="text-left">
                        <th>No</th>
                        <th>Contract</th>
                        <th>Operator Name</th>
                        <th>Drilling Rig</th>
                        <th>Well Name</th>
                        <th>Access Code</th>
                        <th>Action</th>
                    </tr>
                </thead>
            </table>
        </div>

    </div>
</div>




</div>
    </div>
</div>
</div>
</section>
@endsection

<!-- Add Project Modal -->
<!-- Modal Manual Tanpa Flowbite -->
<div id="addProjectModal" style="display:none;" class="hidden fixed inset-0 bg-black/50 z-50 flex items-center justify-center">
    <div class="bg-white rounded-lg shadow-lg w-full max-w-xl mx-auto p-6 relative">
        <!-- Header -->
        <div class="flex justify-between items-center border-b pb-2 mb-4">
            <h3 class="text-xl font-semibold">Add New Project</h3>
            <button id="closeModalBtn" class="text-gray-600 hover:text-red-600 text-2xl leading-none">&times;</button>
        </div>
        <form id="addProjectForm" method="POST" enctype="multipart/form-data" action="{{ route('projects.store') }}">
            @csrf
            <div class="hD0sTTDgbxakubcHVW2X xCPtuxM4_gihvpPwv9bX iHPddplqYvrN6qWgvntn AqVNvLG_H6VHhym2yKMp">
                <div>
                <label for="contract" class="TR_P65x9ie7j6uxFo_Cs _Vb9igHms0hI1PQcvp_S c8dCx6gnV43hTOLV6ks5 ezMFUVl744lvw6ht0lFe __9sbu0yrzdhGIkLWNXl OyABRrnTV_kvHV7dJ0uE">Contract</label>
                <input type="text" name="contract" id="contract" class="custom-input" placeholder="Contract" required>
                </div>

                <div>
                <label for="operator_name" class="TR_P65x9ie7j6uxFo_Cs _Vb9igHms0hI1PQcvp_S c8dCx6gnV43hTOLV6ks5 ezMFUVl744lvw6ht0lFe __9sbu0yrzdhGIkLWNXl OyABRrnTV_kvHV7dJ0uE">Operator Name</label>
                <input type="text" name="operator_name" id="operator_name" class="custom-input" placeholder="Operator Name" required>
                </div>

                <div>
                <label for="drillingrig" class="TR_P65x9ie7j6uxFo_Cs _Vb9igHms0hI1PQcvp_S c8dCx6gnV43hTOLV6ks5 ezMFUVl744lvw6ht0lFe __9sbu0yrzdhGIkLWNXl OyABRrnTV_kvHV7dJ0uE">Drilling Rig</label>
                <input type="text" name="drillingrig" id="drillingrig" class="custom-input" placeholder="Drilling Rig" required>
                </div>

                <div>
                <label for="wellname" class="TR_P65x9ie7j6uxFo_Cs _Vb9igHms0hI1PQcvp_S c8dCx6gnV43hTOLV6ks5 ezMFUVl744lvw6ht0lFe __9sbu0yrzdhGIkLWNXl OyABRrnTV_kvHV7dJ0uE">Well Name</label>
                <input type="text" name="wellname" id="wellname" class="custom-input" placeholder="Well Name" required>
                </div>

                <div>
                <label for="kodeakses" class="TR_P65x9ie7j6uxFo_Cs _Vb9igHms0hI1PQcvp_S c8dCx6gnV43hTOLV6ks5 ezMFUVl744lvw6ht0lFe __9sbu0yrzdhGIkLWNXl OyABRrnTV_kvHV7dJ0uE">Access Code</label>
                <input type="text" name="kodeakses" id="kodeakses" value="{{ rand(10000,99999) }}" readonly class="custom-input" placeholder="Access Code">
                </div>

                <div class="wwofGIyK_H_z3Xjelq8G">
                    <label for="logo" class="TR_P65x9ie7j6uxFo_Cs _Vb9igHms0hI1PQcvp_S c8dCx6gnV43hTOLV6ks5 ezMFUVl744lvw6ht0lFe __9sbu0yrzdhGIkLWNXl OyABRrnTV_kvHV7dJ0uE">Company Logo (JPG, JPEG, PNG)</label>
                    
                    <div class="YRrCJSr_j5nopfm4duUc t6gkcSf0Bt4MLItXvDJ_ Q_jg_EPdNf9eDMn1mLI2 Nm7xMnguzOx6J5Ao7yCU">
                        <label for="logo-upload" class="YRrCJSr_j5nopfm4duUc lF8IBOHHY_0eQ2mr5ba1 t6gkcSf0Bt4MLItXvDJ_ SA5DoMHfwOFtY4h_qzuM e8VqoQNK0mbkRFDL3LMV Q_jg_EPdNf9eDMn1mLI2 Nm7xMnguzOx6J5Ao7yCU mveJTCIb2WII7J4sY22F b0rXX23llDSn6PZwxAyx olKvC3XA85ljIesOcoAC">
                            <div class="YRrCJSr_j5nopfm4duUc e8VqoQNK0mbkRFDL3LMV Q_jg_EPdNf9eDMn1mLI2 Nm7xMnguzOx6J5Ao7yCU gyULXFQVgjg7SZF8X3HH">
                                <svg aria-hidden="true" class="_hpGev6RXFut0Jm_iRgf Mln3CkDzLcoVQAC3Uqsd hlT3pgfpx11BUFMWNdhc" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M7 16a4 4 0 01-.88-7.903A5 5 0 1115.9 6L16 6a5 5 0 011 9.9M15 13l-3-3m0 0l-3 3m3-3v12"></path>
                                </svg>
                                <p class="TR_P65x9ie7j6uxFo_Cs">Click to upload or drag and drop</p>
                                <p class="gMXmdpOPfqG_3CKkL0VD">PNG, JPG or JPEG (MAX. 800x400px)</p>
                            </div>
                            <input id="logo-upload" name="logo" type="file" accept="image/png,image/jpeg,image/jpg" class="_SmdlCf6eUKB_V9S5IDj max-w-[300px] h-[200px] mx-auto w-full p-4 flex flex-col justify-center items-center border-2 border-dashed border-gray-300 rounded-lg cursor-pointer hover:bg-gray-100 transition" onchange="previewLogo(event)">
                        </label>
                    </div>

                    <!-- Preview -->
                    <div class="mt-2">
                        <img id="logo-preview" src="#" alt="Preview" class="hidden w-[150px] h-[150px] object-contain rounded border border-gray-300" />
                    </div>
                </div>

            </div>

            <div class="Q_jg_EPdNf9eDMn1mLI2 UYOSZJ1_pv3B5nt1ujCP rvdRhGyExrNYTA6euxsF SQf297smyJVNzzOO3iQL xr7CqaTHxTvDOrwAH2SW">
                <button type="submit" class="_k0lTW0vvzboctTxDi2R t6gkcSf0Bt4MLItXvDJ_ Q_jg_EPdNf9eDMn1mLI2 Nm7xMnguzOx6J5Ao7yCU custom-btn-submit"><i class="fa-solid fa-save"></i> &nbsp; Save Project
                </button>

                <button onclick="closeModal() return false;" type="button"
                        class="custom-btn-cancel">
                    Cancel
                </button>


            </div>
        </form>
  </div>
</div>


{{-- CSRF Token untuk semua AJAX --}}
<script>
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': document.querySelector('meta[name="csrf-token"]').getAttribute('content')
        }
    });
    console.log('Modal state:', document.getElementById('addProjectModal').classList);

</script>
<script>
    document.addEventListener("DOMContentLoaded", function () {
        const modal = document.getElementById("addProjectModal");
        const openBtn = document.getElementById("openModalBtn");
        const closeBtn = document.getElementById("closeModalBtn");

        modal.style.display = ''; // hapus inline style ketika JS sudah siap

        openBtn.addEventListener("click", () => {
            modal.classList.remove("hidden");
        });

        closeBtn.addEventListener("click", () => {
            modal.classList.add("hidden");
        });

        window.addEventListener("click", (e) => {
            if (e.target === modal) {
                modal.classList.add("hidden");
            }
        });
    });

    function closeModal() {
        document.getElementById("addProjectModal").classList.add("hidden");
        document.getElementById("addProjectForm").reset();
        const preview = document.getElementById('logo-preview');
        if (preview) preview.classList.add('hidden');
    }
</script>

{{-- DataTables AJAX & ADD DATA--}}
<script>
    document.addEventListener("DOMContentLoaded", function () {
        const table = $('#datatable').DataTable({
            processing: true,
            serverSide: true,
            ajax: '{{ route("projects.data") }}',
            columns: [
                { data: 'DT_RowIndex', name: 'DT_RowIndex', orderable: false, searchable: false },
                { data: 'contract', name: 'contract' },
                { data: 'operator_name', name: 'operator_name' },
                { data: 'drillingrig', name: 'drillingrig' },
                { data: 'wellname', name: 'wellname' },
                { data: 'kodeakses', name: 'kodeakses' },
                { data: 'action', name: 'action', orderable: false, searchable: false },
            ]
        });
    });
</script>

<script>
const form = document.getElementById("addProjectForm");
form.addEventListener("submit", function (e) {
    e.preventDefault();

    const formData = new FormData(form);
    const submitBtn = form.querySelector("button[type='submit']");
    submitBtn.disabled = true;
    submitBtn.innerHTML = '<i class="fa-solid fa-spinner fa-spin"></i> Saving...';

    let url = form.action;
    let method = "POST";

    if (form.dataset.editId) {
        url = `/projects/${form.dataset.editId}`;
        method = "POST";
        formData.append('_method', 'PUT');
    }

    fetch(url, {
        method: method,
        headers: {
            'X-CSRF-TOKEN': document.querySelector('input[name="_token"]').value
        },
        body: formData
    })

    .then(async response => {
        const isJson = response.headers.get("content-type")?.includes("application/json");
        const data = isJson ? await response.json() : null;

        if (!response.ok || !data || !data.success) {
            throw new Error(data?.message || "Failed to save project.");
        }

        // Reset form
        form.reset();
        document.getElementById('logo-preview')?.classList.add('hidden');

        // Close modal
        document.getElementById("addProjectModal").classList.add("hidden");

        // Show SweetAlert success
        Swal.fire({
            icon: 'success',
            title: 'Success',
            text: data.message || 'Project has been added successfully!',
            confirmButtonColor: '#22c55e'
        });

        // Reload DataTable
        $('#datatable').DataTable().ajax.reload(null, false);
    })

    .catch(error => {
        console.error("AJAX ERROR:", error);
        Swal.fire({
            icon: 'error',
            title: 'Error',
            text: 'An error occurred while saving the project.\n' + error.message,
            confirmButtonColor: '#ef4444'
        });
    })

    .finally(() => {
        submitBtn.disabled = false;
        submitBtn.innerHTML = '<i class="fa-solid fa-save"></i> &nbsp; Save Project';
    });
});
</script>


{{-- DELETE DATA--}}
<script>
function confirmDelete(id) {
    Swal.fire({
        title: 'Are you sure?',
        text: 'This project will be permanently deleted.',
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#dc2626', // red-600
        cancelButtonColor: '#6b7280',  // gray-500
        confirmButtonText: 'Yes, Delete',
        cancelButtonText: 'Cancel',
    }).then((result) => {
        if (result.isConfirmed) {
            fetch("{{ url('projects') }}/" + id, {
                method: 'DELETE',
                headers: {
                    'X-CSRF-TOKEN': '{{ csrf_token() }}',
                    'Accept': 'application/json',
                }
            })
            .then(res => res.json())
            .then(data => {
                if (data.success) {
                    Swal.fire({
                        icon: 'success',
                        title: 'Deleted!',
                        text: data.message || 'Project has been deleted successfully.',
                        timer: 2000,
                        showConfirmButton: false,
                        timerProgressBar: true,
                    });

                    // Reload datatable
                    $('#datatable').DataTable().ajax.reload(null, false);
                } else {
                    Swal.fire({
                        icon: 'error',
                        title: 'Error!',
                        text: data.message || 'Failed to delete the project.',
                        confirmButtonColor: '#ef4444'
                    });
                }
            })
            .catch(error => {
                console.error("DELETE ERROR:", error);
                Swal.fire({
                    icon: 'error',
                    title: 'Error!',
                    text: 'An unexpected error occurred while deleting the project.',
                    confirmButtonColor: '#ef4444'
                });
            });
        }
    });
}
</script>


{{-- NOTIFICATION--}}
<script>
    // 🔁 Check & tampilkan success toast dari localStorage
    document.addEventListener("DOMContentLoaded", function () {
        const msg = localStorage.getItem("projectUpdateSuccess");
        if (msg) {
            const alertBox = document.createElement('div');
            alertBox.className = `fixed top-5 right-5 z-50 px-4 py-3 bg-green-100 border border-green-400 text-green-700 rounded shadow`;
            alertBox.innerHTML = `<strong>Success:</strong> ${msg}`;
            document.body.appendChild(alertBox);
            setTimeout(() => alertBox.remove(), 6000);
            localStorage.removeItem("projectUpdateSuccess");
        }
    });

    function showAlert(message, color = 'green') {
        const alertBox = document.createElement('div');
        alertBox.className = `fixed top-5 right-5 z-50 px-4 py-3 bg-${color}-100 border border-${color}-400 text-${color}-700 rounded shadow`;
        alertBox.innerHTML = `<strong>${color === 'green' ? 'Success:' : 'Error:'}</strong> ${message}`;
        document.body.appendChild(alertBox);
        setTimeout(() => alertBox.remove(), 6000);
    }
</script>


{{-- PREVIEW COMPANY LOGO--}}
<script>
    function previewLogo(event) {
        const file = event.target.files[0];
        const preview = document.getElementById('logo-preview');

        if (!file) {
            preview.classList.add('hidden');
            return;
        }

        const allowedTypes = ['image/jpeg', 'image/jpg', 'image/png'];
        if (!allowedTypes.includes(file.type)) {
            alert("Only JPG, JPEG, and PNG files are allowed.");
            event.target.value = '';
            preview.classList.add('hidden');
            return;
        }

        if (file.size > 512000) { // 500KB
            alert("File size must be less than 500KB.");
            event.target.value = '';
            preview.classList.add('hidden');
            return;
        }

        const reader = new FileReader();
        reader.onload = function(e) {
            preview.src = e.target.result;
            preview.classList.remove('hidden');
        };
        reader.readAsDataURL(file);
    }
</script>






