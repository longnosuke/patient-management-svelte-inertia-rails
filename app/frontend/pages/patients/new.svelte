<script>
  import { useForm } from '@inertiajs/svelte';

  let form = useForm({
    first_name: '',
    last_name: '',
    email: '',
    address: '',
    contact_number: '',
    date_of_birth: '',
  });

  function submit(e) {
    e.preventDefault();
    $form.post('/patients');
  }
</script>

<div class="form">
  <h2 class="form__title">Patient Registration</h2>

  <form onsubmit={submit}>
    <div class="form__group">
      <label for="first_name" class="form__label">First Name</label>
      <input type="text" class="form__input" bind:value={$form.first_name} />
      {#if $form.errors.first_name}
        <div class="form__error">{$form.errors.first_name}</div>
      {/if}
    </div>

    <div class="form__group">
      <label for="last_name" class="form__label">First Name</label>
      <input type="text" class="form__input" bind:value={$form.last_name} />
      {#if $form.errors.last_name}
        <div class="form__error">{$form.errors.last_name}</div>
      {/if}
    </div>

    <div class="form__group">
      <label for="email" class="form__label">Email</label>
      <input id="email" type="email" class="form__input" bind:value={$form.email} />
      {#if $form.errors.email}
        <div class="form__error">{$form.errors.email}</div>
      {/if}
    </div>

    <div class="form__group">
      <label for="address" class="form__label">Address</label>
      <input id="address" type="text" class="form__input" bind:value={$form.address} />
      {#if $form.errors.address}
        <div class="form__error">{$form.errors.address}</div>
      {/if}
    </div>

    <div class="form__group">
      <label for="contact_number" class="form__label">Contact Number</label>
      <input id="contact_number" type="tel" class="form__input" bind:value={$form.contact_number} />
      {#if $form.errors.contact_number}
        <div class="form__error">{$form.errors.contact_number}</div>
      {/if}
    </div>

    <div class="form__group">
      <label for="date_of_birth" class="form__label">Date of Birth</label>
      <input id="date_of_birth" type="date" class="form__input" bind:value={$form.date_of_birth} />
      {#if $form.errors.date_of_birth}
        <div class="form__error">{$form.errors.date_of_birth}</div>
      {/if}
    </div>

    <button type="submit" class="form__button">Submit</button>
  </form>
</div>

<style>
  .form {
    max-width: 60vw;
    margin: 40px auto;
    padding: 20px;
    background: #fff;
    border-radius: 8px;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
  }

  .form__title {
    font-size: 22px;
    font-weight: bold;
    text-align: center;
    margin-bottom: 15px;
  }

  .form__group {
    margin-bottom: 15px;
  }

  .form__label {
    display: block;
    font-size: 14px;
    font-weight: 600;
    margin-bottom: 5px;
  }

  .form__input {
    width: 100%;
    padding: 8px;
    font-size: 14px;
    border: 1px solid #ccc;
    border-radius: 5px;
    outline: none;
    transition: border 0.3s;
  }

  .form__input:focus {
    border-color: #007BFF;
  }

  .form__error {
    font-size: 12px;
    color: red;
    margin-top: 5px;
  }

  .form__button {
    width: 100%;
    padding: 10px;
    font-size: 16px;
    font-weight: bold;
    color: white;
    background: #007BFF;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background 0.3s;
  }

  .form__button:hover {
    background: #0056b3;
  }
</style>
