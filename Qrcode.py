import qrcode
def generate_qr_code(data, filename):
    qr = qrcode.QRCode(
        version=1,
        error_correction=qrcode.constants.ERROR_CORRECT_L,
        box_size=10,
        border=4,
    )
    qr.add_data(data)
    qr.make(fit=True)

    img = qr.make_image(fill_color="black", back_color="white")

    img.save(filename)

if __name__ == "__main__":
    # Example data and filename
    data_to_encode = "https://www.example.com"
    output_filename = "example_qr_code.png"

    # Generate QR code
    generate_qr_code(data_to_encode, output_filename)

    print(f"QR code generated and saved as {output_filename}")
