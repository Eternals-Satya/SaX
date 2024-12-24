// Modul HTTP untuk SaX

// Fungsi untuk mengirimkan HTTP GET
func httpGet(url) {
    print("Mengirim HTTP GET request ke " + url)
    return 200  // Status code
}

// Fungsi untuk mengirimkan HTTP POST
func httpPost(url, data) {
    print("Mengirim HTTP POST request ke " + url + " dengan data: " + data)
    return 201  // Status code
}
