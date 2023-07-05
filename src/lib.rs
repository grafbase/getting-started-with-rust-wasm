use wasm_bindgen::prelude::*;

#[wasm_bindgen]
pub async fn greeter(name: String) -> Result<String, JsValue> {
    console_error_panic_hook::set_once();
    Ok(format!("hello {}!", name))
}
