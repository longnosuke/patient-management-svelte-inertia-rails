<script>
  export let title = "Dashboard";
  import { page } from "@inertiajs/svelte";

  let showAlert = false;
  let showNotice = false;

  $: {
    if ($page.props.flash.alert) {
      showAlert = true;
      setTimeout(() => (showAlert = false), 3000);
    }
    if ($page.props.flash.notice) {
      showNotice = true;
      setTimeout(() => (showNotice = false), 3000);
    }
  }
</script>

<div class="dashboard">
  <!-- Sidebar -->
  <aside class="sidebar">
    <h2 class="logo">MyApp</h2>
    <nav>
      <a href="/" class="nav-link">Home</a>
      <a href="/patients" class="nav-link">Patients</a>
      <a href="/appointments" class="nav-link">Appointments</a>
      <a href="/settings" class="nav-link">Settings</a>
    </nav>
  </aside>

  <!-- Main Content -->
  <div class="main-content">
    <!-- Fixed Navbar -->
    <header class="navbar">
      <h1>{title}</h1>
      <div class="user-info">
        <img src="/avatar.png" alt="User Avatar" class="avatar" />
        <span>John Doe</span>
      </div>
    </header>

    <!-- Flash Messages -->
    {#if showAlert}
      <div class="flash-message flash-error" transition:fade>
        {$page.props.flash.alert}
        <button class="close-btn" on:click={() => (showAlert = false)}>×</button>
      </div>
    {/if}

    {#if showNotice}
      <div class="flash-message flash-success" transition:fade>
        {$page.props.flash.notice}
        <button class="close-btn" on:click={() => (showNotice = false)}>×</button>
      </div>
    {/if}

    <!-- Scrollable Content Area -->
    <main class="content">
      <slot />
    </main>
  </div>
</div>

<style>
  .dashboard {
    display: flex;
    height: 100vh;
    overflow: hidden; /* Prevents scrolling on the whole page */
  }

  /* Sidebar */
  .sidebar {
    width: 250px;
    background: #1e293b;
    color: white;
    padding: 20px;
    display: flex;
    flex-direction: column;
    gap: 20px;
  }
  .logo {
    font-size: 1.5rem;
    font-weight: bold;
  }
  .nav-link {
    color: #cbd5e1;
    text-decoration: none;
    padding: 10px;
    display: block;
    border-radius: 5px;
  }
  .nav-link:hover {
    background: #334155;
  }

  /* Main Content */
  .main-content {
    flex-grow: 1;
    display: flex;
    flex-direction: column;
    background: #f1f5f9;
    overflow: hidden;
  }

  /* Fixed Navbar */
  .navbar {
    position: fixed;
    top: 0;
    width: 100%;
    background: white;
    padding: 15px 20px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    z-index: 1000;
  }
  .user-info {
    display: flex;
    align-items: center;
    gap: 10px;
  }
  .avatar {
    width: 35px;
    height: 35px;
    border-radius: 50%;
  }

  .content {
    flex-grow: 1;
    padding: 20px;
    margin-top: 60px; /* Adjust for fixed navbar */
    height: calc(100vh - 60px);
    overflow-y: auto; /* Enables scrolling */
  }
  .flash-message {
    position: fixed;
    top: 20px;
    right: 20px;
    padding: 12px 20px;
    border-radius: 8px;
    font-size: 14px;
    font-weight: bold;
    color: white;
    opacity: 0;
    transform: translateY(-10px);
    transition: opacity 0.3s ease-out, transform 0.3s ease-out;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.15);
    z-index: 1000;
    display: flex;
    align-items: center;
    justify-content: space-between;
    gap: 10px;
  }

  .flash-success {
    background-color: #28a745;
  }

  .flash-error {
    background-color: #dc3545;
  }

  .close-btn {
    background: transparent;
    border: none;
    color: white;
    font-size: 18px;
    cursor: pointer;
  }

  /* Fade transition */
  @keyframes fade-in {
    from {
      opacity: 0;
      transform: translateY(-10px);
    }
    to {
      opacity: 1;
      transform: translateY(0);
    }
  }

  @keyframes fade-out {
    from {
      opacity: 1;
      transform: translateY(0);
    }
    to {
      opacity: 0;
      transform: translateY(-10px);
    }
  }

  .flash-message {
    animation: fade-in 0.3s ease-out forwards, fade-out 0.3s ease-out 2.7s forwards;
  }
</style>
