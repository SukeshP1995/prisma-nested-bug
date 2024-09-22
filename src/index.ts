import { Prisma, PrismaClient } from '@prisma/client'
import { PGlite } from '@electric-sql/pglite';
import { PrismaPGlite } from 'pglite-prisma-adapter'
import { readFile } from 'fs/promises';

const client = new PGlite(undefined);
const migration = await readFile('./prisma/init.sql', 'utf8')
await client.exec(migration)

const adapter = new PrismaPGlite(client);
const prisma = new PrismaClient({ adapter });

const date1 = new Date();

prisma.tradeItemType.create({
  data: {
    "gtin": "01111111111111",
    "additionalTradeItemIdentification": [
      {
        "content": "ARTSUP1234567890123",
        "@additionalTradeItemIdentificationTypeCode": "BJ_DPMED"
      }
    ],
    "isTradeItemABaseUnit": false,
    "isTradeItemAConsumerUnit": false,
    "isTradeItemADespatchUnit": false,
    "isTradeItemAnInvoiceUnit": false,
    "isTradeItemAnOrderableUnit": true,
    "tradeItemUnitDescriptorCode": {
      "content": "BASE_UNIT_OR_EACH"
    },
    "informationProviderOfTradeItem": {
      "create": {
        "gln": "1234567890123",
        "partyAddress": "Test",
        "partyName": "Test",
        "partyRoleCode": {
          "content": "CHEQUE_ORDER"
        }
      }
    },
    "gdsnTradeItemClassification": {
      "create": {
        "gpcCategoryCode": "10008070",
        "gpcCategoryName": "Cannabis - Biscuits/Cookies (Frozen)"
      }
    },
    "targetMarket": {
      "create": [
        {
          "targetMarketCountryCode": {
            "content": "262"
          }
        },
        {
          "targetMarketCountryCode": {
            "content": "212"
          }
        },
        {
          "targetMarketCountryCode": {
            "content": "208"
          }
        }
      ]
    },
    "tradeItemSynchronisationDates": {
      "create": {
        "lastChangeDateTime": "2024-09-06T08:57:00Z",
        "effectiveDateTime": "2024-09-29T10:52:00Z",
        "publicationDateTime": "2024-09-30T10:52:00Z"
      }
    },
    "brandOwner": {
      "create": {
        "gln": "1234567890123",
        "partyAddress": "Test",
        "partyName": "Test",
        "partyRoleCode": {
          "content": "CHECKING_PARTY"
        }
      }
    },
    "manufacturerOfTradeItem": {
      "create": [
        {
          "gln": "1234567890123",
          "partyAddress": "Test",
          "partyName": "Test",
          "partyRoleCode": {
            "content": "BUYERS_AGENT_REPRESENTATIVE"
          }
        }
      ]
    },
    "tradeItemContactInformation": {
      "create": [
        {
          "contactTypeCode": {
            "content": "BXA"
          },
          "contactAddress": "Test",
          "contactName": "Test"
        }
      ]
    },
    "tradeItemInformation": {
      "create": [
        {
          "extension": {
            "create": {
              "packagingInformationModule": {
                "create": {
                  "packaging": {
                    "create": [
                      {
                        "packagingFeatureCode": [
                          {
                            "content": "CORK_AGGLOMERATE"
                          }
                        ],
                        "packagingFunctionCode": [
                          {
                            "content": "FLEXIBLE"
                          }
                        ],
                        "packagingTypeCode": {
                          "content": "BX"
                        },
                        "packagingWeight": {
                          "content": 12,
                          "@measurementUnitCode": "AXU"
                        },
                        "platformTypeCode": {
                          "content": "31"
                        },
                        "packagingMaterial": {
                          "create": [
                            {
                              "packagingMaterialTypeCode": {
                                "content": "METAL_BRASS"
                              },
                              "packagingMaterialCompositionQuantity": [
                                {
                                  "content": 12,
                                  "@measurementUnitCode": "[beth U]"
                                }
                              ],
                              "packagingLabellingTypeCode": {
                                "content": "LABEL_ON_PACKAGING"
                              }
                            }
                          ]
                        },
                        "packagingDimension": {
                          "create": {
                            "packagingDepth": {
                              "content": 23,
                              "@measurementUnitCode": "[beth U]"
                            },
                            "packagingHeight": {
                              "content": 23,
                              "@measurementUnitCode": "[beth U]"
                            },
                            "packagingWidth": {
                              "content": 23,
                              "@measurementUnitCode": "BQL"
                            }
                          }
                        }
                      }
                    ]
                  }
                }
              },
              "materialModule": {
                "create": {
                  "material": {
                    "create": [
                      {
                        "materialComposition": {
                          "create": [
                            {
                              "materialContent": [
                                {
                                  "content": "Test",
                                  "@languageCode": "aa"
                                }
                              ]
                            }
                          ]
                        }
                      }
                    ]
                  }
                }
              },
              "certificationInformationModule": {
                "create": {
                  "certificationInformation": {
                    "create": [
                      {
                        "certificationAgency": "Test",
                        "certificationStandard": "Test",
                        "isCertificateRequired": "TRUE",
                        "certification": {
                          "create": [
                            {
                              "certificationValue": "Test",
                              "certificateIssuanceDateTime": "2024-09-30T10:53:00Z",
                              "certificationEffectiveEndDateTime": "2024-10-01T10:53:00Z",
                              "certificationEffectiveStartDateTime": "2024-10-13T10:53:00Z",
                              "certificationIdentification": "Test",
                              "referencedFileInformation": {
                                "create": [
                                  {
                                    "referencedFileTypeCode": {
                                      "content": "CERTIFICATION"
                                    },
                                    "contentDescription": [
                                      {
                                        "content": "Test",
                                        "@languageCode": "ak"
                                      }
                                    ],
                                    "fileFormatName": "Test",
                                    "fileVersion": "Test",
                                    "uniformResourceIdentifier": "Test"
                                  }
                                ]
                              }
                            }
                          ]
                        }
                      }
                    ]
                  }
                }
              },
              "consumerInstructionsModule": {
                "create": {
                  "consumerInstructions": {
                    "create": {
                      "consumerStorageInstructions": [
                        {
                          "content": "Test",
                          "@languageCode": "am"
                        }
                      ],
                      "consumerUsageInstructions": [
                        {
                          "content": "Test",
                          "@languageCode": "ba"
                        }
                      ],
                      "consumerAssemblyInstructions": [
                        {
                          "content": "Test",
                          "@languageCode": "ae"
                        }
                      ]
                    }
                  }
                }
              },
              "deliveryPurchasingInformationModule": {
                "create": {
                  "deliveryPurchasingInformation": {
                    "create": {
                      "consumerFirstAvailabilityDateTime": "2024-09-13T10:54:00Z",
                      "orderQuantityMinimum": 12,
                      "startAvailabilityDateTime": "2024-09-30T10:54:00Z"
                    }
                  }
                }
              },
              "durableGoodsCharacteristicsModule": {
                "create": {
                  "durableGoodsCharacteristics": {
                    "create": {
                      "isAssemblyRequired": false
                    }
                  }
                }
              },
              "dutyFeeTaxInformationModule": {
                "create": {
                  "dutyFeeTaxInformation": {
                    "create": [
                      {
                        "dutyFeeTaxTypeCode": "12",
                        "dutyFeeTaxAgencyCode": {
                          "content": "2"
                        },
                        "dutyFeeTax": {
                          "create": [
                            {
                              "dutyFeeTaxRate": 123
                            }
                          ]
                        }
                      }
                    ]
                  }
                }
              },
              "marketingInformationModule": {
                "create": {
                  "marketingInformation": {
                    "create": {
                      "tradeItemFeatureBenefit": [
                        {
                          "content": "Test",
                          "@languageCode": "az",
                          "@formattingPattern": "Test"
                        }
                      ],
                      "tradeItemFeatureCodeReference": [
                        {
                          "content": "Test"
                        }
                      ],
                      "tradeItemMarketingMessage": [
                        {
                          "content": "Test",
                          "@languageCode": "az",
                          "@formattingPattern": "Test"
                        }
                      ],
                      "designer": [
                        {
                          "content": "Test",
                          "@languageCode": "ba"
                        }
                      ],
                      "shortTradeItemMarketingMessage": [
                        {
                          "content": "Test",
                          "@languageCode": "ba",
                          "@formattingPattern": "Test"
                        }
                      ]
                    }
                  }
                }
              },
              "packagingMarkingModule": {
                "create": {
                  "packagingMarking": {
                    "create": {
                      "consumerWarningInformation": {
                        "create": [
                          {
                            "consumerWarningDescription": [
                              {
                                "content": "Test",
                                "@languageCode": "ak"
                              }
                            ]
                          }
                        ]
                      }
                    }
                  }
                }
              },
              "packagingSustainabilityModule": {
                "create": {
                  "individualPackagingComponentLevel": {
                    "create": [
                      {
                        "packagingMaterialDescription": [
                          {
                            "content": "Test",
                            "@languageCode": "ay"
                          }
                        ]
                      }
                    ]
                  }
                }
              },
              "sustainabilityModule": {
                "create": {
                  "sustainabilityInformation": {
                    "create": {
                      "tradeItemSustainabilityFeatureCode": [
                        {
                          "content": "PARTIALLY_MADE_FROM_RECYCLED_MATERIALS"
                        }
                      ],
                      "tradeItemSustainabilityStatement": [
                        {
                          "content": "Test",
                          "@languageCode": "am"
                        }
                      ]
                    }
                  }
                }
              },
              "placeOfItemActivityModule": {
                "create": {
                  "importClassification": {
                    "create": [
                      {
                        "importClassificationTypeCode": {
                          "content": "HARMONIZED_TARIFF_SCHEDULE_OF_THE_US"
                        },
                        "importClassificationValue": "Test"
                      }
                    ]
                  },
                  "placeOfProductActivity": {
                    "create": {
                      "countryOfOriginStatement": [
                        {
                          "content": "Test",
                          "@languageCode": "az"
                        }
                      ]
                    }
                  }
                }
              },
              "productCharacteristicsModule": {
                "create": {
                  "productCharacteristics": {
                    "create": [
                      {
                        "productCharacteristicCode": {
                          "content": "areaPerformanceM2PerHourMax"
                        },
                        "productCharacteristicValueMeasurement": [
                          {
                            "content": 13,
                            "@measurementUnitCode": "[beth U]"
                          }
                        ]
                      }
                    ]
                  }
                }
              },
              "regulatedTradeItemModule": {
                "create": {
                  "regulatoryInformation": {
                    "create": [
                      {
                        "isTradeItemRegulationCompliant": "TRUE"
                      }
                    ]
                  }
                }
              },
              "salesInformationModule": {
                "create": {
                  "tradeItemPriceInformation": {
                    "create": {
                      "cataloguePrice": {
                        "create": [
                          {
                            "tradeItemPrice": {
                              "content": 23,
                              "@currencyCode": "BMD"
                            }
                          }
                        ]
                      }
                    }
                  }
                }
              },
              "tradeItemDataCarrierAndIdentificationModule": {
                "create": {
                  "dataCarrier": {
                    "create": [
                      {
                        "applicationIdentifierTypeCode": [
                          {
                            "content": "16"
                          }
                        ],
                        "dataCarrierFamilyTypeCode": {
                          "content": "GS1_QR_CODE"
                        },
                        "dataCarrierTypeCode": {
                          "content": "EAN_8"
                        }
                      }
                    ]
                  }
                }
              },
              "tradeItemDescriptionModule": {
                "create": {
                  "tradeItemDescriptionInformation": {
                    "create": {
                      "brandNameInformation": {
                        "create": {
                          "brandName": "HYJKL",
                          "subBrand": "Test"
                        }
                      },
                      "descriptionShort": [
                        {
                          "content": "ERDE",
                          "@languageCode": "sq"
                        }
                      ],
                      "functionalName": [
                        {
                          "content": "ERDERND",
                          "@languageCode": "ay"
                        }
                      ],
                      "labelDescription": [
                        {
                          "content": "Test",
                          "@languageCode": "ak"
                        }
                      ],
                      "variantDescription": [
                        {
                          "content": "Test",
                          "@languageCode": "as"
                        }
                      ],
                      "colour": {
                        "create": [
                          {
                            "colourCode": {
                              "content": "Test",
                              "@colourCodeListCode": "Test",
                              "@colourCodeListDescription": "Test",
                              "@codeListVersion": "Test",
                              "@colourCodeListVersion": "Test"
                            },
                            "colourFamilyCode": {
                              "content": "UNDEFINED"
                            }
                          }
                        ]
                      }
                    }
                  }
                }
              },
              "tradeItemHandlingModule": {
                "create": {
                  "tradeItemHandlingInformation": {
                    "create": {
                      "handlingInstructionsDescription": [
                        {
                          "content": "Test",
                          "@languageCode": "af"
                        }
                      ],
                      "tradeItemStacking": {
                        "create": [
                          {
                            "stackingFactorTypeCode": {
                              "content": "TRANSPORT_ROAD"
                            }
                          }
                        ]
                      }
                    }
                  }
                }
              },
              "tradeItemMeasurementsModule": {
                "create": {
                  "tradeItemMeasurements": {
                    "create": {
                      "depth": {
                        "content": 12,
                        "@measurementUnitCode": "AMP"
                      },
                      "height": {
                        "content": 12,
                        "@measurementUnitCode": "BPM"
                      },
                      "netContent": [
                        {
                          "content": 12,
                          "@measurementUnitCode": "BFT"
                        }
                      ],
                      "width": {
                        "content": 12,
                        "@measurementUnitCode": "BPM"
                      },
                      "netContentStatement": [
                        {
                          "content": "Test",
                          "@languageCode": "bm"
                        }
                      ],
                      "tradeItemWeight": {
                        "grossWeight": {
                          "content": 23,
                          "@measurementUnitCode": "AMH"
                        },
                        "netWeight": {
                          "content": 34,
                          "@measurementUnitCode": "BFT"
                        }
                      }
                    }
                  }
                }
              },
              "variableTradeItemInformationModule": {
                "create": {
                  "variableTradeItemInformation": {
                    "create": {
                      "isTradeItemAVariableUnit": false
                    }
                  }
                }
              }
            }
          },
          "tradeItemComponents": {
            "create": {
              "numberOfPiecesInSet": 2,
              "totalNumberOfComponents": 2,
              "componentInformation": {
                "create": [
                  {
                    "componentNumber": 1,
                    "componentIdentification": {
                      "content": "2"
                    }
                  }
                ]
              }
            }
          }
        }
      ]
    }
  }
}).then(() => {
  console.log(((new Date()).getTime() - date1.getTime()) / 1000);
})