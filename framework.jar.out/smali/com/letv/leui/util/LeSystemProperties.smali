.class public Lcom/letv/leui/util/LeSystemProperties;
.super Ljava/lang/Object;
.source "LeSystemProperties.java"


# static fields
.field private static final COMMON_PATTERN_REGEX:Ljava/lang/String; = "^[Xx][0-9]{3}$"

.field private static final LE1:Ljava/lang/String; = "Le1"

.field private static final LE1PRO:Ljava/lang/String; = "Le1Pro"

.field private static final LE1S:Ljava/lang/String; = "Le1s"

.field private static final LE1_:Ljava/lang/String; = "Le1_"

.field private static final LE2:Ljava/lang/String; = "Le2"

.field private static final LEMAX:Ljava/lang/String; = "LeMax"

.field private static final LEMAX2:Ljava/lang/String; = "LeMax2"

.field private static final LEMAXPRO:Ljava/lang/String; = "LeMaxPro"

.field private static final LE_1:Ljava/lang/String; = "Le 1"

.field private static final LE_MAX:Ljava/lang/String; = "Le Max"

.field private static final LE_PRO:Ljava/lang/String; = "Le 1 Pro"

.field private static final MAX1_PATTERN_REGEX:Ljava/lang/String; = "^[Mm][Aa][Xx][0-9]{1}$"

.field private static final MTK:Ljava/lang/String; = "mtk"

.field private static final QCOM:Ljava/lang/String; = "qcom"

.field private static final RO_VENDOR:Ljava/lang/String; = "ro.product.customize"

.field private static final VENDOR_CMCC:Ljava/lang/String; = "china-mobile"

.field private static final VENDOR_CT:Ljava/lang/String; = "china-telecom"

.field private static final VENDOR_CU:Ljava/lang/String; = "china-unicom"

.field private static final VENDOR_DEFAULT:Ljava/lang/String; = "default"

.field private static final VENDOR_HONGKONG:Ljava/lang/String; = "hongkong"

.field private static final VENDOR_INDIA:Ljava/lang/String; = "india"

.field private static final VENDOR_OVERSEA:Ljava/lang/String; = "oversea"

.field private static final VENDOR_THAILAND:Ljava/lang/String; = "thailand"

.field private static final VENDOR_WN:Ljava/lang/String; = "whole-netcom"

.field private static final VENDOR_WW:Ljava/lang/String; = "ww"

.field private static final WHOLE_NETCOM_PATTERN_REGEX:Ljava/lang/String; = "^[Xx][0-9]{3}[+]$"

.field private static final X1_PATTERN_REGEX:Ljava/lang/String; = "^[Xx][0-9]{1}$"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultCountryCode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 166
    const-string v0, ""

    .line 167
    .local v0, "countryCode":Ljava/lang/String;
    const-string v2, "ro.product.customize"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "countryName":Ljava/lang/String;
    const-string v2, "default"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "china-telecom"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "china-mobile"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "china-unicom"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "whole-netcom"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 170
    :cond_0
    const-string v0, "CN"

    .line 185
    :goto_0
    return-object v0

    .line 171
    :cond_1
    const-string v2, "hongkong"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 172
    const-string v0, "HK"

    goto :goto_0

    .line 173
    :cond_2
    const-string v2, "india"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 174
    const-string v0, "IN"

    goto :goto_0

    .line 175
    :cond_3
    const-string v2, "thailand"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 176
    const-string v0, "TH"

    goto :goto_0

    .line 177
    :cond_4
    const-string v2, "oversea"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 178
    const-string v0, "US"

    goto :goto_0

    .line 179
    :cond_5
    const-string v2, "ww"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 180
    const-string v0, "RU"

    goto :goto_0

    .line 182
    :cond_6
    const-string v0, "NULL"

    goto :goto_0
.end method

.method public static getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 59
    .local v0, "deviceName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 60
    const-string v0, ""

    .line 62
    .end local v0    # "deviceName":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static getModelName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 81
    .local v0, "modelName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 82
    const-string v0, ""

    .line 84
    .end local v0    # "modelName":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static getPlatformName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 93
    const-string v1, ""

    .line 94
    .local v1, "platformValue":Ljava/lang/String;
    invoke-static {}, Lcom/letv/leui/util/LeSystemProperties;->getProductName()Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, "productName":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 96
    :cond_0
    const-string v1, "unknown"

    .line 98
    :cond_1
    const-string v3, "Le1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "Le1_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "Le1s"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 99
    :cond_2
    const-string v1, "mtk"

    .line 111
    :cond_3
    :goto_0
    return-object v1

    .line 100
    :cond_4
    const-string v3, "Le1Pro"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "LeMax"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "LeMaxPro"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "LeMax2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 102
    :cond_5
    const-string v1, "qcom"

    goto :goto_0

    .line 103
    :cond_6
    const-string v3, "Le2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 104
    invoke-static {}, Lcom/letv/leui/util/LeSystemProperties;->getModelName()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "modelName":Ljava/lang/String;
    const-string v3, "Le X62"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 106
    const-string v1, "mtk"

    goto :goto_0

    .line 107
    :cond_7
    const-string v3, "Le X52"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 108
    const-string v1, "qcom"

    goto :goto_0
.end method

.method public static getProductModelName()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 150
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 152
    .local v0, "productModel":Ljava/lang/String;
    const-string v1, "^[Xx][0-9]{3}$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "^[Xx][0-9]{3}[+]$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x36

    if-ne v1, v2, :cond_2

    .line 155
    const-string v0, "Le 1"

    .line 162
    :cond_1
    :goto_0
    return-object v0

    .line 156
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x38

    if-ne v1, v2, :cond_3

    .line 157
    const-string v0, "Le 1 Pro"

    goto :goto_0

    .line 158
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x39

    if-ne v1, v2, :cond_1

    .line 159
    const-string v0, "Le Max"

    goto :goto_0
.end method

.method public static getProductName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 70
    .local v0, "productName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 71
    const-string v0, ""

    .line 73
    .end local v0    # "productName":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static getVendorName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 127
    const-string v1, ""

    .line 128
    .local v1, "vendorType":Ljava/lang/String;
    const-string v2, "ro.product.customize"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "platformName":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 130
    move-object v1, v0

    .line 134
    :goto_0
    return-object v1

    .line 132
    :cond_0
    invoke-static {}, Lcom/letv/leui/util/LeSystemProperties;->lookupOldVendorTable()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static lookupOldVendorTable()Ljava/lang/String;
    .locals 3

    .prologue
    .line 193
    const-string v1, ""

    .line 194
    .local v1, "vendorValue":Ljava/lang/String;
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 195
    .local v0, "modelInfo":Ljava/lang/String;
    const-string v2, "^[Xx][0-9]{3}$"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 196
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 197
    const-string v1, "default"

    .line 211
    :cond_0
    :goto_0
    return-object v1

    .line 198
    :cond_1
    const-string v2, "6"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 199
    const-string v1, "china-telecom"

    goto :goto_0

    .line 200
    :cond_2
    const-string v2, "8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    const-string v1, "china-mobile"

    goto :goto_0

    .line 203
    :cond_3
    const-string v2, "^[Xx][0-9]{3}[+]$"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 204
    const-string v2, "+"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 205
    const-string v1, "whole-netcom"

    goto :goto_0

    .line 207
    :cond_4
    const-string v2, "Le"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Max"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "Pro"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 208
    :cond_5
    const-string v1, "oversea"

    goto :goto_0
.end method
