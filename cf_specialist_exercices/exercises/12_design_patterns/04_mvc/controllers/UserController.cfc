component
{
    public any function init()
    {
        return this;
    }

    remote void function saveUser( UserID, FirstName, LastName, Email, Password )
    {
        application.userModel.update( arguments.UserID,
                                      arguments.FirstName,
                                      arguments.LastName,
                                      arguments.Email,
                                      arguments.Password );

        location( "../user-list.cfm", false );
    }

    remote void function deleteUser( UserID )
    {
        application.userModel.delete( arguments.UserID );
        location( "../user-list.cfm", false );
    }
}