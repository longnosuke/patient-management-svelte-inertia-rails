<script>
  import { Link } from "@inertiajs/svelte";
  import Layout from "../components/Layout.svelte";
  let { patient } = $props();
</script>

<Layout title="Patient Page">
  <div class="patient-details">
    <h1 class="heading">Patient Details</h1>

    <div class="details-card">
      <p><strong>Full Name:</strong> {patient.first_name} {patient.last_name}</p>
      <p><strong>Date of Birth:</strong> {patient.date_of_birth}</p>
      <p><strong>Contact:</strong> {patient.contact_number}</p>
      <p><strong>Email:</strong> {patient.email}</p>
      <p><strong>Address:</strong> {patient.address}</p>
    </div>

    <Link href="/patients" class="btn">Back to List</Link>
  </div>
</Layout>

<style>
  .patient-details {
    padding: 2rem;
    background: white;
    border-radius: 8px;
    box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
  }

  .heading {
    font-size: 1.8rem;
    font-weight: bold;
    margin-bottom: 1rem;
  }

  .details-card {
    background: #f9fafb;
    padding: 1.5rem;
    border-radius: 8px;
    margin-bottom: 1.5rem;
  }

  .details-card p {
    padding: 10px 5px;
  }
</style>
