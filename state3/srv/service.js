const cds = require('@sap/cds');
const axios = require('axios');

module.exports = (srv) => {

    srv.on('getDistricts', async (req) => {

        const state = req.data.state;

        if (!state) {
            req.error(400, "State is required");
        }

        try {
            const response = await axios.post(
                'https://countriesnow.space/api/v0.1/countries/state/cities',
                {
                    country: "India",
                    state: state
                }
            );

            // API returns cities (can be treated as districts)
            return response.data.data || [];

        } catch (error) {
            req.error(500, "Failed to fetch districts from external API");
        }

    });

};