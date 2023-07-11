use wasm_bindgen::prelude::*;

#[wasm_bindgen(start)]
fn main() {
    console_error_panic_hook::set_once();
}

#[wasm_bindgen]
pub fn greeter(name: String) -> Result<String, JsValue> {
    Ok(format!("Hello {}!", name))
}
