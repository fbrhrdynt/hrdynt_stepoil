<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>{{ isset($token) ? 'Reset Password' : 'Forgot Password' }} | FOTrack</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="min-h-screen bg-gradient-to-r from-green-100 via-white to-green-100 flex items-center justify-center">

    <div class="bg-white rounded-2xl shadow-xl px-8 py-10 w-full max-w-md transition-transform transform hover:scale-[1.01] duration-300">
        <div class="text-center mb-6">
            <img src="{{ asset('isi/icons_fotrack/fotrack.png') }}" alt="FOTrack Logo" class="h-20 mx-auto mb-2">
            <h1 class="text-2xl font-bold text-gray-800">
                {{ isset($token) ? 'Reset Your Password' : 'Forgot Your Password?' }}
            </h1>
        </div>

        {{-- Success Message --}}
        @if (session('success'))
            <div class="mb-4 text-green-700 text-sm bg-green-100 border border-green-400 rounded px-3 py-2 text-center">
                {{ session('success') }}
            </div>
        @endif

        {{-- Error Message --}}
        @if ($errors->any())
            <div class="mb-4 text-sm text-red-600">
                <ul class="list-disc pl-5">
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        @endif

        @if (!isset($token))
        {{-- Forgot Password Form --}}
        <form method="POST" action="{{ route('forgot.send') }}">
            @csrf
            <div class="mb-5">
                <label for="email" class="block text-sm font-semibold mb-1 text-gray-700">Your Email Address</label>
                <input type="email" name="email" id="email"
                       class="w-full px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-green-500"
                       required>
            </div>
            <button type="submit"
                    class="w-full bg-green-600 text-white font-semibold py-2 rounded-lg hover:bg-green-700 transition duration-300">
                Send Reset Link
            </button>
        </form>
        @else
        {{-- Reset Password Form --}}
        <form method="POST" action="{{ route('reset.handle') }}">
            @csrf
            <input type="hidden" name="token" value="{{ $token }}">

            <div class="mb-5">
                <label for="pass_login" class="block text-sm font-semibold mb-1 text-gray-700">New Password</label>
                <input type="password" name="pass_login" id="pass_login"
                       class="w-full px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-green-500"
                       required>
            </div>

            <div class="mb-6">
                <label for="pass_login_confirmation" class="block text-sm font-semibold mb-1 text-gray-700">Confirm New Password</label>
                <input type="password" name="pass_login_confirmation" id="pass_login_confirmation"
                       class="w-full px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-green-500"
                       required>
            </div>

            <button type="submit"
                    class="w-full bg-green-600 text-white font-semibold py-2 rounded-lg hover:bg-green-700 transition duration-300">
                Reset Password
            </button>
        </form>
        @endif

        <div class="text-center mt-6">
            <a href="{{ route('login') }}" class="text-sm text-green-700 hover:underline">← Back to Login</a>
        </div>

        <p class="text-sm text-gray-500 text-center mt-4">&copy; {{ now()->year }} FOTrack. All rights reserved.</p>
    </div>

</body>
</html>
