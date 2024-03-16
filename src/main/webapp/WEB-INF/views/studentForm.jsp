<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page isELIgnored="false" %>



<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">


<body class="bg-success">

<h3 class="text-center text-white mt-5">Fill You Details</h3>

  <form class=" g-3 mt-5 d-flex flex-column justify-content-center align-items-center" action="save" method="post" >

    <div class="col-md-6 text-white">
      <label for="inputName" class="form-label">Name</label>
      <input
      type="text"
      class="form-control"
      id="inputName"
      placeholder="name..."
      name="name">
    </div>

     <div class="col-md-6 mt-3 text-white">
          <label for="inputEmail4" class="form-label">Qualification </label>
          <input
          type="text"
          class="form-control"
          id="inputEmail4"
          placeholder="qualification..."
          name="qualification">
      </div>

    <div class="col-md-6 mt-3 text-white">
      <label for="inputAddress" class="form-label">Address</label>
      <input
      type="text"
      class="form-control"
      id="inputAddress"
      placeholder="address..."
      name="address">
    </div>

    <div class=" mt-3">
      <button type="submit" class="btn btn-primary"> Submit </button>
    </div>

  </form>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</body>