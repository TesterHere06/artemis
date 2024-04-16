function save_json(_data, _name) 
{
    var json_string = json_stringify(_data);
    var buffer      = buffer_create(string_byte_length(json_string) + 1, buffer_fixed, 1);
    buffer_write(buffer, buffer_string, json_string);
    buffer_save(buffer, _name);
    buffer_delete(buffer);

}

function load_json(_name) {

    var buffer = buffer_load(_name);

    if (buffer != -1)
    {
        var json_string = buffer_read(buffer, buffer_string);

        buffer_delete(buffer);

        return json_parse(json_string);
    }
    else
    {
        return undefined;
    }
}

function user_data_struct() constructor {

    // SET DEFAULT VALUES FOR VARIABLES THAT YOU WISH TO SAVE - MAKE THESE WHATEVER YOU WANT

    MUS = 0.1;
	SFX = 0.1;
	NAME = "";

    // LOAD VALUES

    load_values = function(_data) {

        var load_data = _data;
        var fields    = variable_struct_get_names(load_data);

        for (var i = 0, len = array_length(fields); i < len; i++)
        {
            self[$ fields[i]] = load_data[$ fields[i]];
        }
    }

    // UPDATE VALUE

    update_value = function(_name, _value) {

        self[$ _name] = _value;

        save_json(self, "user_data.json");
    }
}