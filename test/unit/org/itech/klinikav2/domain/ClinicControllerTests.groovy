package org.itech.klinikav2.domain



import org.junit.*
import grails.test.mixin.*

/**
 * ClinicControllerTests
 * A unit test class is used to test individual methods or blocks of code without considering the surrounding infrastructure
 */
@TestFor(ClinicController)
@Mock(Clinic)
class ClinicControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/clinic/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.clinicInstanceList.size() == 0
        assert model.clinicInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.clinicInstance != null
    }

    void testSave() {
        controller.save()

        assert model.clinicInstance != null
        assert view == '/clinic/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/clinic/show/1'
        assert controller.flash.message != null
        assert Clinic.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/clinic/list'


        populateValidParams(params)
        def clinic = new Clinic(params)

        assert clinic.save() != null

        params.id = clinic.id

        def model = controller.show()

        assert model.clinicInstance == clinic
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/clinic/list'


        populateValidParams(params)
        def clinic = new Clinic(params)

        assert clinic.save() != null

        params.id = clinic.id

        def model = controller.edit()

        assert model.clinicInstance == clinic
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/clinic/list'

        response.reset()


        populateValidParams(params)
        def clinic = new Clinic(params)

        assert clinic.save() != null

        // test invalid parameters in update
        params.id = clinic.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/clinic/edit"
        assert model.clinicInstance != null

        clinic.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/clinic/show/$clinic.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        clinic.clearErrors()

        populateValidParams(params)
        params.id = clinic.id
        params.version = -1
        controller.update()

        assert view == "/clinic/edit"
        assert model.clinicInstance != null
        assert model.clinicInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/clinic/list'

        response.reset()

        populateValidParams(params)
        def clinic = new Clinic(params)

        assert clinic.save() != null
        assert Clinic.count() == 1

        params.id = clinic.id

        controller.delete()

        assert Clinic.count() == 0
        assert Clinic.get(clinic.id) == null
        assert response.redirectedUrl == '/clinic/list'
    }
}
