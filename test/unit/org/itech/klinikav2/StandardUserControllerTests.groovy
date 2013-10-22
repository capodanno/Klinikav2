package org.itech.klinikav2



import org.itech.klinikav2.domain.StandardUserController;
import org.itech.klinikav2.domain.StandardUser;
import org.junit.*

import grails.test.mixin.*

/**
 * StandardUserControllerTests
 * A unit test class is used to test individual methods or blocks of code without considering the surrounding infrastructure
 */
@TestFor(StandardUserController)
@Mock(StandardUser)
class StandardUserControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/standardUser/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.standardUserInstanceList.size() == 0
        assert model.standardUserInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.standardUserInstance != null
    }

    void testSave() {
        controller.save()

        assert model.standardUserInstance != null
        assert view == '/standardUser/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/standardUser/show/1'
        assert controller.flash.message != null
        assert StandardUser.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/standardUser/list'


        populateValidParams(params)
        def standardUser = new StandardUser(params)

        assert standardUser.save() != null

        params.id = standardUser.id

        def model = controller.show()

        assert model.standardUserInstance == standardUser
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/standardUser/list'


        populateValidParams(params)
        def standardUser = new StandardUser(params)

        assert standardUser.save() != null

        params.id = standardUser.id

        def model = controller.edit()

        assert model.standardUserInstance == standardUser
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/standardUser/list'

        response.reset()


        populateValidParams(params)
        def standardUser = new StandardUser(params)

        assert standardUser.save() != null

        // test invalid parameters in update
        params.id = standardUser.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/standardUser/edit"
        assert model.standardUserInstance != null

        standardUser.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/standardUser/show/$standardUser.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        standardUser.clearErrors()

        populateValidParams(params)
        params.id = standardUser.id
        params.version = -1
        controller.update()

        assert view == "/standardUser/edit"
        assert model.standardUserInstance != null
        assert model.standardUserInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/standardUser/list'

        response.reset()

        populateValidParams(params)
        def standardUser = new StandardUser(params)

        assert standardUser.save() != null
        assert StandardUser.count() == 1

        params.id = standardUser.id

        controller.delete()

        assert StandardUser.count() == 0
        assert StandardUser.get(standardUser.id) == null
        assert response.redirectedUrl == '/standardUser/list'
    }
}
