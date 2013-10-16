package org.itech.klinikav2.domain



import org.junit.*
import grails.test.mixin.*

/**
 * ItemInvoiceControllerTests
 * A unit test class is used to test individual methods or blocks of code without considering the surrounding infrastructure
 */
@TestFor(ItemInvoiceController)
@Mock(ItemInvoice)
class ItemInvoiceControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/itemInvoice/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.itemInvoiceInstanceList.size() == 0
        assert model.itemInvoiceInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.itemInvoiceInstance != null
    }

    void testSave() {
        controller.save()

        assert model.itemInvoiceInstance != null
        assert view == '/itemInvoice/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/itemInvoice/show/1'
        assert controller.flash.message != null
        assert ItemInvoice.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/itemInvoice/list'


        populateValidParams(params)
        def itemInvoice = new ItemInvoice(params)

        assert itemInvoice.save() != null

        params.id = itemInvoice.id

        def model = controller.show()

        assert model.itemInvoiceInstance == itemInvoice
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/itemInvoice/list'


        populateValidParams(params)
        def itemInvoice = new ItemInvoice(params)

        assert itemInvoice.save() != null

        params.id = itemInvoice.id

        def model = controller.edit()

        assert model.itemInvoiceInstance == itemInvoice
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/itemInvoice/list'

        response.reset()


        populateValidParams(params)
        def itemInvoice = new ItemInvoice(params)

        assert itemInvoice.save() != null

        // test invalid parameters in update
        params.id = itemInvoice.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/itemInvoice/edit"
        assert model.itemInvoiceInstance != null

        itemInvoice.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/itemInvoice/show/$itemInvoice.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        itemInvoice.clearErrors()

        populateValidParams(params)
        params.id = itemInvoice.id
        params.version = -1
        controller.update()

        assert view == "/itemInvoice/edit"
        assert model.itemInvoiceInstance != null
        assert model.itemInvoiceInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/itemInvoice/list'

        response.reset()

        populateValidParams(params)
        def itemInvoice = new ItemInvoice(params)

        assert itemInvoice.save() != null
        assert ItemInvoice.count() == 1

        params.id = itemInvoice.id

        controller.delete()

        assert ItemInvoice.count() == 0
        assert ItemInvoice.get(itemInvoice.id) == null
        assert response.redirectedUrl == '/itemInvoice/list'
    }
}
