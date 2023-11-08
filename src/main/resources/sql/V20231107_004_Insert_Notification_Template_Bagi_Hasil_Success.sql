INSERT INTO PARAMETER_MANAGEMENT_SERVICE.CONTENT_PARAMETER (
        CREATED_BY,
        CREATED_DATE,
        DESCRIPTION,
        MODIFIED_BY,
        MODIFIED_DATE,
        MODULE,
        NAME,
        VALUE,
        "LANGUAGE",
        "ORDERING",
        LABEL1,
        LABEL2,
        IMAGE_URL,
        ADDITIONAL_DATA,
        FLAG,
        IS_DELETED
    )
VALUES(
        'SYSTEM',
        TIMESTAMP '2023-10-11 15:15:00.000000',
        'Template Receipt Beli Emas Rutin Bagi Hasil Success',
        NULL,
        NULL,
        'TEMPLATE_RECEIPT',
        'BELI_EMAS_RUTIN_BAGIHASIL_SUCCESS',
        '-',
        'IDN',
        1,
        NULL,
        NULL,
        NULL,
        TO_CLOB(
            '{
  "transactionStatusData": [
    {
      "value": "<font color=\"#F4000000\" size=\"14\" type=\"autosize\" weight=\"bold\">${sumberPembelian}</font>",
      "key": "Sumber Pembelian",
      "type": "data",
      "background": "#00FFFFFF"
    },
    { "value": "", "key": "", "type": "line" },
    {
      "value": "<font color=\"#F4000000\" size=\"14\" type=\"autosize\" weight=\"bold\">${pembelianBerdasarkan}</font>",
      "key": "Pembelian Berdasarkan",
      "type": "data",
      "background": "#00FFFFFF"
    },
    { "value": "", "key": "", "type": "line" },
    {
      "value": "<font color=\"#F4000000\" size=\"14\" type=\"autosize\" weight=\"normal\">${fromAccountAlias}</font><br><font color=\"#9E000000\" size=\"14\" type=\"autosize\" weight=\"normal\">${fromAccountNumber}</font>",
      "key": "Rekening E-mas",
      "type": "data",
      "background": "#00FFFFFF"
    },
    {
      "detailTransaksi": [
        {
          "value": "<font color=\"#F4000000\" size=\"14\" type=\"autosize\" weight=\"normal\"> ${toAccountAlias}</font><br><font color=\"#9E000000\" size=\"14\" type=\"autosize\" weight=\"normal\">${toAccountNumber}</font>",
          "key": "Rekening Sumber",
          "type": "data",
          "background": "#00FFFFFF"
        }
      ]
    }
  ],
  "receiptData": [
    {
      "value": "<font color=\"#F4000000\" size=\"14\" type=\"autosize\" weight=\"bold\">${sumberPembelian}</font>",
      "key": "Sumber Pembelian",
      "type": "data",
      "background": "#00FFFFFF"
    },
    { "value": "", "key": "", "type": "line" },
    {
      "value": "<font color=\"#F4000000\" size=\"14\" type=\"autosize\" weight=\"bold\">${pembelianBerdasarkan}</font>",
      "key": "Pembelian Berdasarkan",
      "type": "data",
      "background": "#00FFFFFF"
    },
    { "value": "", "key": "", "type": "line" },
    {
      "value": "<font color=\"#F4000000\" size=\"14\" type=\"autosize\" weight=\"normal\">${fromAccoun'
        ) || TO_CLOB(
            'tAlias}</font><br><font color=\"#9E000000\" size=\"14\" type=\"autosize\" weight=\"normal\">${fromAccountNumber}</font>",
      "key": "Rekening E-mas",
      "type": "data",
      "background": "#00FFFFFF"
    },
    { "value": "", "key": "", "type": "line" },
    {
      "value": "<font color=\"#F4000000\" size=\"14\" type=\"autosize\" weight=\"normal\"> ${toAccountAlias}</font><br><font color=\"#9E000000\" size=\"14\" type=\"autosize\" weight=\"normal\">${toAccountNumber}</font>",
      "key": "Rekening Sumber",
      "type": "data",
      "background": "#00FFFFFF"
    }
  ]
}
'
        ),
        'JSON',
        0
    );