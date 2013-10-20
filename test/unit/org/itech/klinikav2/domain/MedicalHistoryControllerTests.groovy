package org.itech.klinikav2.domain



import org.junit.*
import grails.test.mixin.*

/**
 * MedicalHistoryControllerTests
 * A unit test class is used to test individual methods or blocks of code without considering the surrounding infrastructure
 */
@TestFor(MedicalHistoryController)
@Mock(MedicalHistory)
class MedicalHistoryControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/medicalHistory/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.medicalHistoryInstanceList.size() == 0
        assert model.medicalHistoryInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.medicalHistoryInstance != null
    }

    void testSave() {
        controller.save()

        assert model.medicalHistoryInstance != null
        assert view == '/medicalHistory/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/medicalHistory/show/1'
        assert controller.flash.message != null
        assert MedicalHistory.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/medicalHistory/list'


        populateValidParams(params)
        def medicalHistory = new MedicalHistory(params)

        assert medicalHistory.save() != null

        params.id = medicalHistory.id

        def model = controller.show()

        assert model.medicalHistoryInstance == medicalHistory
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/medicalHistory/list'


        populateValidParams(params)
        def medicalHistory = new MedicalHistory(params)

        assert medicalHistory.save() != null

        params.id = medicalHistory.id

        def model = controller.edit()

        assert model.medicalHistoryInstance == medicalHistory
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/medicalHistory/list'

        response.reset()


        populateValidParams(params)
        def medicalHistory = new MedicalHistory(params)

        assert medicalHistory.save() != null

        // test invalid parameters in update
        params.id = medicalHistory.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/medicalHistory/edit"
        assert model.medicalHistoryInstance != null

        medicalHistory.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/medicalHistory/show/$medicalHistory.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        medicalHistory.clearErrors()

        populateValidParams(params)
        params.id = medicalHistory.id
        params.version = -1
        controller.update()

        assert view == "/medicalHistory/edit"
        assert model.medicalHistoryInstance != null
        assert model.medicalHistoryInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/medicalHistory/list'

        response.reset()

        populateValidParams(params)
        def medicalHistory = new MedicalHistory(params)

        assert medicalHistory.save() != null
        assert MedicalHistory.count() == 1

        params.id = medicalHistory.id

        controller.delete()

        assert MedicalHistory.count() == 0
        assert MedicalHistory.get(medicalHistory.id) == null
        assert response.redirectedUrl == '/medicalHistory/list'
    }
}
