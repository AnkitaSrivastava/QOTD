<%@ page import="qotd.Quote" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="layout" content="main"/>
    <g:set var="entityName" value="${message(code: 'quote.label', default: 'Quote')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<div class="nav">
                  <span class="menuButton"><<g:link class ="create" controller="quote" action="quote" >random quotes </g:link></span>
    <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
    </span>
    <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label"
                                                                               args="[entityName]"/></g:link></span>
</div>

<div class="body">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message">${flash.message}</div>
    </g:if>
    <div class="list">
        <table>
            <thead>
            <tr>

                <g:sortableColumn property="id" title="${message(code: 'quote.id.label', default: 'Id')}"/>

                <g:sortableColumn property="author" title="${message(code: 'quote.author.label', default: 'Author')}"/>

                <g:sortableColumn property="content"
                                  title="${message(code: 'quote.content.label', default: 'Content')}"/>

                <g:sortableColumn property="created"
                                  title="${message(code: 'quote.created.label', default: 'Created')}"/>

            </tr>
            </thead>
            <tbody>
            <g:each in="${quoteInstanceList}" status="i" var="quoteInstance">
                <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">

                    <td><g:link action="show"
                                id="${quoteInstance.id}">${fieldValue(bean: quoteInstance, field: "id")}</g:link></td>

                    <td>${fieldValue(bean: quoteInstance, field: "author")}</td>

                    <td>${fieldValue(bean: quoteInstance, field: "content")}</td>

                    <td><g:formatDate date="${quoteInstance.created}"/></td>

                </tr>
            </g:each>
            </tbody>
        </table>
    </div>

    <div class="paginateButtons">
        <g:paginate total="${quoteInstanceTotal}"/>
    </div>
</div>
</body>
</html>
