<script>
  import { Link } from "@inertiajs/svelte";
  import Layout from "../components/Layout.svelte";

  let { patients } = $props();
</script>

<Layout title="Patient List">
  <table class="table">
    <thead>
    <tr>
      <th>ID</th>
      <th>Full Name</th>
      <th>Date of Birth</th>
      <th>Contact</th>
      <th>Email</th>
      <th>Address</th>
      <th>Actions</th>
    </tr>
    </thead>
    <tbody>
    {#each patients as patient}
      <tr>
        <td>{patient.id}</td>
        <td>{patient.first_name} {patient.last_name}</td>
        <td>{patient.date_of_birth}</td>
        <td>{patient.contact_number}</td>
        <td>{patient.email}</td>
        <td>{patient.address}</td>
        <td>
          <Link href={`/patients/${patient.id}`} class="btn">
            View
          </Link>
        </td>
      </tr>
    {/each}
    </tbody>
  </table>
</Layout>

<style>
  .table {
    width: 100%;
    border-collapse: collapse;
    background: white;
    border-radius: 8px;
    overflow: hidden;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
  }
  th, td {
    padding: 10px;
    border-bottom: 1px solid #ddd;
    text-align: left;
  }
  .btn {
    background: #1e40af;
    color: white;
    padding: 5px 10px;
    text-decoration: none;
    border-radius: 5px;
  }
  .btn:hover {
    background: #1e3a8a;
  }
</style>
