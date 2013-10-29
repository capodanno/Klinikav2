package org.itech.klinikav2.domain



import org.itech.klinikav2.controller.PatientQueueController;
import org.junit.*

import grails.test.mixin.*

/**
 * PatientQueueControllerTests
 * A unit test class is used to test individual methods or blocks of code without considering the surrounding infrastructure
 */
@TestFor(PatientQueueController)
@Mock(PatientQueue)
class PatientQueueControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/patientQueue/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.patientQueueInstanceList.size() == 0
        assert model.patientQueueInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.patientQueueInstance != null
    }

    void testSave() {
        controller.save()

        assert model.patientQueueInstance != null
        assert view == '/patientQueue/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/patientQueue/show/1'
        assert controller.flash.message != null
        assert PatientQueue.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/patientQueue/list'


        populateValidParams(params)
        def patientQueue = new PatientQueue(params)

        assert patientQueue.save() != null

        params.id = patientQueue.id

        def model = controller.show()

        assert model.patientQueueInstance == patientQueue
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/patientQueue/list'


        populateValidParams(params)
        def patientQueue = new PatientQueue(params)

        assert patientQueue.save() != null

        params.id = patientQueue.id

        def model = controller.edit()

        assert model.patientQueueInstance == patientQueue
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/patientQueue/list'

        response.reset()


        populateValidParams(params)
        def patientQueue = new PatientQueue(params)

        assert patientQueue.save() != null

        // test invalid parameters in update
        params.id = patientQueue.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/patientQueue/edit"
        assert model.patientQueueInstance != null

        patientQueue.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/patientQueue/show/$patientQueue.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        patientQueue.clearErrors()

        populateValidParams(params)
        params.id = patientQueue.id
        params.version = -1
        controller.update()

        assert view == "/patientQueue/edit"
        assert model.patientQueueInstance != null
        assert model.patientQueueInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/patientQueue/list'

        response.reset()

        populateValidParams(params)
        def patientQueue = new PatientQueue(params)

        assert patientQueue.save() != null
        assert PatientQueue.count() == 1

        params.id = patientQueue.id

        controller.delete()

        assert PatientQueue.count() == 0
        assert PatientQueue.get(patientQueue.id) == null
        assert response.redirectedUrl == '/patientQueue/list'
    }
}
