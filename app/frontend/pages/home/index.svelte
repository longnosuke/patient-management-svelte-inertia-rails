<script>
</script>

  <main>
    <h2>Effortless Patient Management</h2>
    <p>Streamline patient records, appointments, and reports with ease.</p>

    <div class="features">
      <a href="/patients" class="card">
        <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M3 3v18h18"/><path d="M9 18V9h6v9"/><path d="M3 9h18"/></svg>
        <h3>Manage Patients</h3>
        <p>View and manage patient records.</p>
      </a>
      <a href="/appointments" class="card">
        <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M3 3h18v18H3z"/><path d="M8 3v4"/><path d="M16 3v4"/><path d="M3 10h18"/><path d="M8 14h2"/><path d="M12 14h4"/></svg>
        <h3>Appointments</h3>
        <p>Schedule and track patient appointments.</p>
      </a>
      <a href="/reports" class="card">
        <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M3 3h18v18H3z"/><path d="M8 14h2"/><path d="M12 14h4"/><path d="M8 10h8"/><path d="M8 18h8"/></svg>
        <h3>Settings</h3>
        <p>Generate reports and analyze data.</p>
      </a>
    </div>
  </main>

<style>
  main {
    font-family: Arial, sans-serif;
    text-align: center;
    padding: 4rem 2rem;
    background: #f8f9fa;
    min-height: 100vh;

    h2 {
      color: #2c3e50;
      font-size: 2rem;
      margin-bottom: 1rem;
    }

    p {
      color: #555;
      font-size: 1.2rem;
    }
  }

  .features {
    display: flex;
    justify-content: center;
    align-items: center;
    flex-wrap: wrap;
    gap: 2rem;
    margin-top: 3rem;
  }

  .card {
    padding: 2rem;
    background: white;
    border-radius: 12px;
    width: 250px;
    text-align: center;
    text-decoration: none;
    color: #2c3e50;
    display: flex;
    flex-direction: column;
    align-items: center;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    transition: transform 0.3s ease, box-shadow 0.3s ease;

    &:hover {
      transform: translateY(-5px);
      box-shadow: 0 6px 15px rgba(0, 0, 0, 0.15);
    }

    svg {
      margin-bottom: 1rem;
      color: #2c3e50;
    }

    h3 {
      margin-bottom: 0.5rem;
      font-size: 1.4rem;
    }

    p {
      font-size: 1rem;
      color: #666;
    }
  }
</style>
