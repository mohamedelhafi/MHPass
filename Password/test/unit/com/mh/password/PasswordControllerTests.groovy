package com.mh.password



import org.junit.*
import grails.test.mixin.*

/**
 * PasswordControllerTests
 * A unit test class is used to test individual methods or blocks of code without considering the surrounding infrastructure
 */
@TestFor(PasswordController)
@Mock(Password)
class PasswordControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/password/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.passwordInstanceList.size() == 0
        assert model.passwordInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.passwordInstance != null
    }

    void testSave() {
        controller.save()

        assert model.passwordInstance != null
        assert view == '/password/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/password/show/1'
        assert controller.flash.message != null
        assert Password.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/password/list'


        populateValidParams(params)
        def password = new Password(params)

        assert password.save() != null

        params.id = password.id

        def model = controller.show()

        assert model.passwordInstance == password
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/password/list'


        populateValidParams(params)
        def password = new Password(params)

        assert password.save() != null

        params.id = password.id

        def model = controller.edit()

        assert model.passwordInstance == password
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/password/list'

        response.reset()


        populateValidParams(params)
        def password = new Password(params)

        assert password.save() != null

        // test invalid parameters in update
        params.id = password.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/password/edit"
        assert model.passwordInstance != null

        password.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/password/show/$password.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        password.clearErrors()

        populateValidParams(params)
        params.id = password.id
        params.version = -1
        controller.update()

        assert view == "/password/edit"
        assert model.passwordInstance != null
        assert model.passwordInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/password/list'

        response.reset()

        populateValidParams(params)
        def password = new Password(params)

        assert password.save() != null
        assert Password.count() == 1

        params.id = password.id

        controller.delete()

        assert Password.count() == 0
        assert Password.get(password.id) == null
        assert response.redirectedUrl == '/password/list'
    }
}
