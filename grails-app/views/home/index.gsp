
<%@ page import="org.itech.klinikav2.domain.Clinic" %>
<html>

<head>
	<title><g:message code="default.welcome.title" args="[meta(name:'app.name')]"/> </title>
	<meta name="layout" content="kickstart" />
</head>

<body>

	<div class="content">
      <!-- Start: slider -->
      <div class="slider topSlider">
        <div class="container-fluid">
          <div id="heroSlider" class="carousel slide">
            <div class="carousel-inner">
              <div class="active item">
                <div class="hero-unit">
                  <div class="row-fluid">
                    <div class="span7 marketting-info">
                      <h1>${fieldValue(bean: clinicInstance, field: "clinicName")}</h1>
                      <p>${fieldValue(bean: clinicInstance, field: "clinicDescription")}</p>                 
                    </div>
                    <div class="span5">
                      <img src="${resource(dir: 'images', file: 'clinic.jpg')}" class="img-polaroid">
                    </div>
                  </div>                  
                </div>
              </div>
              <div class="item">
                <div class="hero-unit">
                  <div class="row-fluid">
                    <div class="span7 marketting-info">
                      <h1>Vision</h1>
                      <p>${fieldValue(bean: clinicInstance, field: "vision")}</p>            
                    </div>
                    <div class="span5">
                      <img src="${resource(dir: 'images', file: 'vision.jpg')}" class="img-polaroid">
                    </div>
                  </div>                  
                </div>
              </div>
              <div class="item">
                <div class="hero-unit">
                  <div class="row-fluid">
                    <div class="span7 marketting-info">
                      <h1>Mission</h1>
                      <p>${fieldValue(bean: clinicInstance, field: "mission")}</p>                
                    </div>
                    <div class="span5">
                      <img src="${resource(dir: 'images', file: 'mission.jpg')}" class="img-polaroid">
                    </div>
                  </div>                  
                </div>
              </div>
            </div>
            <a class="left carousel-control" href="#heroSlider" data-slide="prev">‹</a>
            <a class="right carousel-control" href="#heroSlider" data-slide="next">›</a>
          </div>
        </div>
      </div>
      <!-- End: slider -->
      <!-- Start: Clinic Other Information -->
	  <div class="container">
        <div class="row bottom-space topSlider">            
          <div class="span3">
            <a href="#"><img src="${resource(dir: 'images', file: 'smap.jpg')}" class="thumbnail bottom-space-less"></a>
            <h4>Location</h4> 
			<p>$${fieldValue(bean: clinicInstance, field: "address")}</p> 			
          </div>
          <div class="span3">
            <a href="#"><img src="${resource(dir: 'images', file: 'scontact.jpg')}" class="thumbnail bottom-space-less"></a>
            <h4>Contact Us</h4>  
			<p>${fieldValue(bean: clinicInstance, field: "mobileNum")}</p> 
			<p>${fieldValue(bean: clinicInstance, field: "telNum")}</p> 
          </div> 
		  <div class="span3">
            <a href="#"><img src="${resource(dir: 'images', file: 'clock.jpg')}" class="thumbnail bottom-space-less"></a>
            <h4>Clinic Hours</h4>  
			<p>${fieldValue(bean: clinicInstance, field: "clinicHours")}</p> 
          </div>
		  <div class="span3">
            <a href="#"><img src="${resource(dir: 'images', file: 'doctor.jpg')}" class="thumbnail bottom-space-less"></a>
            <h4>Doctor and Staff</h4>  
			<p>Dr. Walang Kaba - Surgeon</p> 
			<p>Ms. Zia Taranta - Receptionist</p> 
          </div>
        </div>
	  </div>
      <!-- End: Clinic Other Information -->
    </div>

</body>

</html>
