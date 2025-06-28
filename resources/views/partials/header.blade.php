@php
$user = auth()->user();
$projectId = $user->id_project ?? null;
$level = $user->level;
@endphp



<header>
  <nav class="navbar">
    <div class="logo-container" id="btnToggleMenu" aria-label="Toggle Menu">
      <img src="{{ asset('isi/icons_fotrack/fotrack.png') }}" width="100px" height="12px" alt="FOTrack Logo" />
      <span style="color: grey">Field Operation Track System</span>
    </div>
  </nav>
</header>

<div class="text-sm font-medium text-center text-gray-500 border-b border-gray-200 dark:text-gray-400 dark:border-gray-700">
    <ul class="flex flex-wrap -mb-px justify-center">
        <li class="me-2">
            <a href="{{ url('/dashboard') }}" class="inline-block p-4 border-b-2 rounded-t-lg {{ request()->routeIs('dashboard') ? 'tab-active' : 'border-transparent hover:text-gray-600 hover:border-gray-300' }}">Dashboard</a>
        </li>
        {{-- My Reports - hanya Operator & Staff --}}
        @if (in_array($level, ['Operator', 'Staff']) && $projectId)
        <li class="me-2">
            <a href="{{ route('projects.details', ['project_id' => $projectId]) }}" class="inline-block p-4 border-b-2 rounded-t-lg {{ request()->routeIs('projects*') ? 'tab-active' : 'border-transparent hover:text-gray-600 hover:border-gray-300' }}" aria-current="page">My Reports</a>
        </li>
        @endif

        {{-- Project Access - MASTER & Supervisor --}}
        @if (in_array($level, ['MASTER', 'Supervisor']))
        <li class="me-2">
            <a href="{{ url('/projects') }}" class="inline-block p-4 border-b-2 rounded-t-lg {{ request()->routeIs('projects*') ? 'tab-active' : 'border-transparent hover:text-gray-600 hover:border-gray-300' }}">Project Access</a>
        </li>
        <li class="me-2">
            <a href="{{ url('/accounts') }}" class="inline-block p-4 border-b-2 rounded-t-lg {{ request()->routeIs('account*') ? 'tab-active' : 'border-transparent hover:text-gray-600 hover:border-gray-300' }}">Accounts</a>
        </li>
        @endif
        <li class="me-2">
            <a href="{{ url('/preventive-maintenance') }}" class="inline-block p-4 border-b-2 rounded-t-lg {{ request()->routeIs('preventive.maintenance') ? 'tab-active' : 'border-transparent hover:text-gray-600 hover:border-gray-300' }}">Preventive Maintenance</a>
        </li>
        @if (in_array($level, ['MASTER', 'Supervisor', 'Staff']))
        <li class="me-2">
            <a href="{{ url('/assets-category') }}" class="inline-block p-4 border-b-2 rounded-t-lg {{ request()->routeIs('assets*') ? 'tab-active' : 'border-transparent hover:text-gray-600 hover:border-gray-300' }}">Company Asset</a>
        </li>
        @endif
        @if (in_array($level, ['MASTER', 'Supervisor', 'Staff']))
        <li class="me-2">
            <a href="{{ url('/inspection-category') }}" class="inline-block p-4 border-b-2 rounded-t-lg {{ request()->routeIs('inspection*') ? 'tab-active' : 'border-transparent hover:text-gray-600 hover:border-gray-300' }}">Inspection Category</a>
        </li>
        @endif
        <li>
            <form action="{{ route('logout') }}" method="POST" class="inline">
                @csrf
                <button type="submit" class="BpcA_ZTX79XDgSc71n2v YRrCJSr_j5nopfm4duUc Q_jg_EPdNf9eDMn1mLI2 mveJTCIb2WII7J4sY22F FJRldeiG2gFGZfuKgp88 d3C8uAdJKNl1jzfE9ynq ezMFUVl744lvw6ht0lFe m_WzesDEb91pTPmX64rt vCBpvc2qOP5jKnBLu_jA Sz97zU8r72z_pjE9zQnR OPrb_iG5WDy_7F05BDOX flex items-center gap-2">
                    <svg class="MnxxlQlR1H0xJuMEE8Yr YIUegm7fh_CpJbivTu6B VQS2tmQ_zFyBOC2tkmto m_WzesDEb91pTPmX64rt bcsWqjK52oeyT6oeC2Az gZ3KuFw1JESHhOJhjT8j Sz97zU8r72z_pjE9zQnR" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                        <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M20 12H8m12 0-4 4m4-4-4-4M9 4H7a3 3 0 0 0-3 3v10a3 3 0 0 0 3 3h2"></path>
                    </svg>
                    <span class="oA7zcT_42jVeFuWTXQnq _74lpPUMEtHf6F0_fjLe BHrWGjM1Iab_fAz0_91H">Log out</span>
                </button>
            </form>
        </li>
    </ul>
</div>
