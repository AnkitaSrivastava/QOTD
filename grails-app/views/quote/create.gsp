<%@ page import="qotd.Quote" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="layout" content="main"/>
    <g:set var="entityName" value="${message(code: 'quote.label', default: 'Quote')}"/>
    <title><g:message code="default.create.label" args="[entityName]"/></title>
</head>

<body>
<div class="nav">
    <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
    </span>
    <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label"
                                                                           args="[entityName]"/></g:link></span>
</div>

<div class="body">
    <h1><g:message code="default.create.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message">${flash.message}</div>
    </g:if>
    <g:hasErrors bean="${quoteInstance}">
        <div class="errors">
            <g:renderErrors bean="${quoteInstance}" as="list"/>
        </div>
    </g:hasErrors>
    <g:form action="save">
        <div class="dialog">
            <table>
                <tbody>

                <tr class="prop">
                    <td valign="top" class="name">
                        <label for="author"><g:message code="quote.author.label" default="Author"/></label>
                    </td>
                    <td valign="top" class="value ${hasErrors(bean: quoteInstance, field: 'author', 'errors')}">
                        <g:textField name="author" value="${quoteInstance?.author}"/>
                    </td>
                </tr>

                <tr class="prop">
                    <td valign="top" class="name">
                        <label for="content"><g:message code="quote.content.label" default="Content"/></label>
                    </td>
                    <td valign="top" class="value ${hasErrors(bean: quoteInstance, field: 'content', 'errors')}">
                        <g:textField name="content" value="${quoteInstance?.content}"/>
                    </td>
                </tr>

                <tr class="prop">
                    <td valign="top" class="name">
                        <label for="created"><g:message code="quote.created.label" default="Created"/></label>
                    </td>
                    <td valign="top" class="value ${hasErrors(bean: quoteInstance, field: 'created', 'errors')}">
                        <g:datePicker name="created" precision="day" value="${quoteInstance?.created}"/>
                    </td>
                </tr>

                </tbody>
            </table>
        </div>

        <div class="buttons">
            <span class="button"><g:submitButton name="create" class="save"
                                                 value="${message(code: 'default.button.create.label', default: 'Create')}"/></span>
        </div>
    </g:form>
</div>
</body>
</html>
