<%@ page contentType="text/html;charset=UTF-8"
  import="java.util.jar.Manifest, com.battlesnake.game.snake.SnakeConfig"
%>
<%
  final SnakeConfig SNAKE = new SnakeConfig();
  final String VERSION = new Manifest(
      getServletContext().getResourceAsStream("/META-INF/MANIFEST.MF")
  ).getMainAttributes().getValue("Implementation-Version");
%>
<html>
  <head>
    <title><%=SNAKE.name()%></title>
    <link rel="stylesheet" href="https://cdn.rawgit.com/yegor256/tacit/gh-pages/tacit-css-1.3.6.min.css"/>
    <style>
    h1, td.color {
      font-weight: 600;
    }

    td.lower {
      text-transform: lowercase;
    }

    td.color, td.lower::first-letter {
      text-transform: uppercase;
    }

    td.color {
      background-color: <%=SNAKE.color()%>;
      color: #FFF;
      border: #000 1px solid;
      border-top-width: 0;
    }
    </style>
  </head>
  <body>
    <h1><%=SNAKE.name()%></h1>
    <table>
      <tbody>
        <tr>
          <th>Version</th>
          <td><%=VERSION%></td>
        </tr>
        <tr>
          <th>Head Type</th>
          <td class="lower"><%=SNAKE.head()%></td>
        </tr>
        <tr>
          <th>Tail Type</th>
          <td class="lower"><%=SNAKE.tail()%></td>
        </tr>
        <tr>
          <th>Start Taunt</th>
          <td><%=SNAKE.taunt()%></td>
        </tr>
        <tr>
          <th>Color</th>
          <td class="color"><%=SNAKE.color()%></td>
        </tr>
      </tbody>
    </table>
    <img src="<%=SNAKE.profile()%>"/>
  </body>
</html>
