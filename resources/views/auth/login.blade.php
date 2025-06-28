<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login | FOTrack</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="min-h-screen bg-gradient-to-r from-green-100 via-white to-green-100 flex items-center justify-center">

    <div class="bg-white rounded-2xl shadow-xl px-8 py-10 w-full max-w-md transition-transform transform hover:scale-[1.01] duration-300">
        <div class="text-center mb-6">
            <img src="{{ asset('isi/icons_fotrack/fotrack.png') }}" alt="FOTrack Logo" class="h-20 mx-auto mb-2">
            <h1 class="text-2xl font-bold text-gray-800">Login to FOTrack</h1>
        </div>

        @if ($errors->has('login_error'))
            <div class="mb-4 text-red-600 text-sm text-center animate-pulse">
                {{ $errors->first('login_error') }}
            </div>
        @endif

        <form method="POST" action="{{ route('login.attempt') }}">
            @csrf

            <div class="mb-5">
                <label class="block text-sm font-semibold mb-1 text-gray-700" for="kode_login">Username</label>
                <input type="text" name="kode_login" id="kode_login"
                       class="w-full px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-green-500"
                       value="{{ old('kode_login') }}" required autofocus>
            </div>

            <div class="mb-6">
                <label class="block text-sm font-semibold mb-1 text-gray-700" for="pass_login">Password</label>
                <input type="password" name="pass_login" id="pass_login"
                       class="w-full px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-green-500"
                       required>
            </div>

            <div class="mb-4">
                <button type="submit"
                        class="w-full bg-green-600 text-white font-semibold py-2 rounded-lg hover:bg-green-700 transition duration-300">
                    Login
                </button>
            </div>
        </form>

        {{-- Link Reset Password --}}
        <div class="text-center">
            <a href="{{ route('forgot.form') }}" class="text-sm text-green-700 hover:underline">
                Forgot Password?
            </a>
        </div>

        <p class="text-sm text-gray-500 text-center mt-4">&copy; {{ now()->year }} FOTrack. All rights reserved.</p>
    </div>

</body>
</html>
