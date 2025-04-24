<script>
  import { Link } from "@inertiajs/svelte";
  let { patients } = $props();

</script>

<div class="Generalgroup">
  <Link href={"patients/new"} class="btn">Add new patient</Link>
</div>
<table class="table">
  <thead>
  <tr>
    <th>ID</th>
    <th>Full Name</th>
    <th>Contact</th>
    <th>Email</th>
    <th>Actions</th>
  </tr>
  </thead>
  <tbody>
  {#each patients as patient}
    <tr>
      <td>{patient.id}</td>
      <td>{patient.first_name} {patient.last_name}</td>
      <td>{patient.contact_number}</td>
      <td>{patient.email}</td>
      <td>
        <Link href={`/patients/${patient.id}`} class="btn">
          View
        </Link>
        <Link href={`/patients/${patient.id}/edit`} class="btn">
          Edit
        </Link>
        <Link href={`/patients/${patient.id}`} method="delete" as="button" class="btn btn--alert">
          Destroy
        </Link>
      </td>
    </tr>
  {/each}
  </tbody>
</table>

<style>
  .Generalgroup {
    margin-bottom: 20px;
    display: flex;
    gap: 20px;
    justify-content: end;
    width: 100%;
  }

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
</style>
