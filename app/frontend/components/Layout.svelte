<script>
  export let title = "Dashboard";
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

    <!-- Scrollable Content Area -->
    <main class="content">
      <slot />
    </main>
  </div>
</div>

<style>
  /* Layout Structure */
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
    left: 250px; /* Push right from sidebar */
    width: calc(100% - 250px);
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

  /* Scrollable Page Content */
  .content {
    flex-grow: 1;
    padding: 20px;
    margin-top: 60px; /* Adjust for fixed navbar */
    height: calc(100vh - 60px);
    overflow-y: auto; /* Enables scrolling */
  }
</style>
