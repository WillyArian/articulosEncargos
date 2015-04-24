package articulosEncargos



import grails.test.mixin.*
import spock.lang.*

@TestFor(FabricaController)
@Mock(Fabrica)
class FabricaControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.fabricaInstanceList
            model.fabricaInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.fabricaInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            request.contentType = FORM_CONTENT_TYPE
            def fabrica = new Fabrica()
            fabrica.validate()
            controller.save(fabrica)

        then:"The create view is rendered again with the correct model"
            model.fabricaInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            fabrica = new Fabrica(params)

            controller.save(fabrica)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/fabrica/show/1'
            controller.flash.message != null
            Fabrica.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def fabrica = new Fabrica(params)
            controller.show(fabrica)

        then:"A model is populated containing the domain instance"
            model.fabricaInstance == fabrica
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def fabrica = new Fabrica(params)
            controller.edit(fabrica)

        then:"A model is populated containing the domain instance"
            model.fabricaInstance == fabrica
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            request.contentType = FORM_CONTENT_TYPE
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/fabrica/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def fabrica = new Fabrica()
            fabrica.validate()
            controller.update(fabrica)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.fabricaInstance == fabrica

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            fabrica = new Fabrica(params).save(flush: true)
            controller.update(fabrica)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/fabrica/show/$fabrica.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            request.contentType = FORM_CONTENT_TYPE
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/fabrica/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def fabrica = new Fabrica(params).save(flush: true)

        then:"It exists"
            Fabrica.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(fabrica)

        then:"The instance is deleted"
            Fabrica.count() == 0
            response.redirectedUrl == '/fabrica/index'
            flash.message != null
    }
}
