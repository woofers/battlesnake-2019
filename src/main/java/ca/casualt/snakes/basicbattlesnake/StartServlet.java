package ca.casualt.snakes.basicbattlesnake;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.stream.Collectors;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import ca.casualt.snakes.basicbattlesnake.types.StartRequest;
import ca.casualt.snakes.basicbattlesnake.types.StartResponse;

/**
 * This is the servlet that is hit when triggering the /start endpoint.
 *
 * @author Tony
 *
 */
@SuppressWarnings("serial")
@WebServlet("/start")
public class StartServlet extends HttpServlet {

    /**
     * Used for json serialization/deserialization.
     */
    private final Gson gson = new Gson();

    /**
     * This handles the standard post request, converts the json request body
     * into a java object, and creates a response.
     *
     * @param req
     *            The http request.
     *
     * @param resp
     *            The http response.
     */
    @Override
    protected void doPost(final HttpServletRequest req, final HttpServletResponse resp)
            throws ServletException, IOException {

        final StartResponse startResponse = new StartResponse();
        startResponse.setColor("#FFB732");
        startResponse.setHeadUrl("http://cdn.akamai.steamstatic.com/steamcommunity/public/images/avatars/cb/cbcaf2d8795966200b09fc13150c04f1cc4f8ed3_full.jpg");
        startResponse.setName("Woofers Snake");
        startResponse.setTaunt("Woof!");

        final String responseBody = gson.toJson(startResponse);
        resp.getWriter().println(responseBody);
    }
}
