.class public Landroid/telephony/SmsMessage;
.super Ljava/lang/Object;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SmsMessage$1;,
        Landroid/telephony/SmsMessage$NoEmsSupportConfig;,
        Landroid/telephony/SmsMessage$SubmitPdu;,
        Landroid/telephony/SmsMessage$MessageClass;
    }
.end annotation


# static fields
.field public static final ENCODING_16BIT:I = 0x3

.field public static final ENCODING_7BIT:I = 0x1

.field public static final ENCODING_8BIT:I = 0x2

.field public static final ENCODING_KSC5601:I = 0x4

.field public static final ENCODING_UNKNOWN:I = 0x0

.field public static final FORMAT_3GPP:Ljava/lang/String; = "3gpp"

.field public static final FORMAT_3GPP2:Ljava/lang/String; = "3gpp2"

.field private static final LOG_TAG:Ljava/lang/String; = "SmsMessage"

.field public static final MAX_USER_DATA_BYTES:I = 0x8c

.field public static final MAX_USER_DATA_BYTES_WITH_HEADER:I = 0x86

.field public static final MAX_USER_DATA_SEPTETS:I = 0xa0

.field public static final MAX_USER_DATA_SEPTETS_WITH_HEADER:I = 0x99

.field private static mIsNoEmsSupportConfigListLoaded:Z

.field private static mNoEmsSupportConfigList:[Landroid/telephony/SmsMessage$NoEmsSupportConfig;


# instance fields
.field private mSubId:I

.field public mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1228
    const/4 v0, 0x0

    sput-object v0, Landroid/telephony/SmsMessage;->mNoEmsSupportConfigList:[Landroid/telephony/SmsMessage$NoEmsSupportConfig;

    .line 1229
    const/4 v0, 0x0

    sput-boolean v0, Landroid/telephony/SmsMessage;->mIsNoEmsSupportConfigListLoaded:Z

    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/SmsMessageBase;)V
    .locals 1
    .param p1, "smb"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SmsMessage;->mSubId:I

    .line 160
    iput-object p1, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    .line 161
    return-void
.end method

.method public static calculateLength(Ljava/lang/CharSequence;Z)[I
    .locals 5
    .param p0, "msgBody"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z

    .prologue
    const/4 v4, 0x1

    .line 340
    invoke-static {}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSms()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0, p1, v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v1

    .line 344
    .local v1, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :goto_0
    const/4 v2, 0x4

    new-array v0, v2, [I

    .line 345
    .local v0, "ret":[I
    const/4 v2, 0x0

    iget v3, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    aput v3, v0, v2

    .line 346
    iget v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    aput v2, v0, v4

    .line 347
    const/4 v2, 0x2

    iget v3, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    aput v3, v0, v2

    .line 348
    const/4 v2, 0x3

    iget v3, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    aput v3, v0, v2

    .line 349
    return-object v0

    .line 340
    .end local v0    # "ret":[I
    .end local v1    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_0
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v1

    goto :goto_0
.end method

.method public static calculateLength(Ljava/lang/String;Z)[I
    .locals 1
    .param p0, "messageBody"    # Ljava/lang/String;
    .param p1, "use7bitOnly"    # Z

    .prologue
    .line 462
    invoke-static {p0, p1}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)[I

    move-result-object v0

    return-object v0
.end method

.method private static charToBCD(C)I
    .locals 3
    .param p0, "c"    # C

    .prologue
    .line 774
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 775
    add-int/lit8 v0, p0, -0x30

    return v0

    .line 777
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid char for BCD "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createFromEfRecord(I[B)Landroid/telephony/SmsMessage;
    .locals 2
    .param p0, "index"    # I
    .param p1, "data"    # [B

    .prologue
    .line 261
    invoke-static {}, Landroid/telephony/SmsMessage;->isCdmaVoice()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromEfRecord(I[B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    .line 269
    .local v0, "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :goto_0
    if-eqz v0, :cond_1

    new-instance v1, Landroid/telephony/SmsMessage;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    :goto_1
    return-object v1

    .line 265
    .end local v0    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :cond_0
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromEfRecord(I[B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    .restart local v0    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    goto :goto_0

    .line 269
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static createFromEfRecord(I[BI)Landroid/telephony/SmsMessage;
    .locals 2
    .param p0, "index"    # I
    .param p1, "data"    # [B
    .param p2, "subId"    # I

    .prologue
    .line 286
    invoke-static {p2}, Landroid/telephony/SmsMessage;->isCdmaVoice(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromEfRecord(I[B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    .line 294
    .local v0, "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :goto_0
    if-eqz v0, :cond_1

    new-instance v1, Landroid/telephony/SmsMessage;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    :goto_1
    return-object v1

    .line 290
    .end local v0    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :cond_0
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromEfRecord(I[B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    .restart local v0    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    goto :goto_0

    .line 294
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static createFromPdu([B)Landroid/telephony/SmsMessage;
    .locals 5
    .param p0, "pdu"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 177
    const/4 v2, 0x0

    .line 181
    .local v2, "message":Landroid/telephony/SmsMessage;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 182
    .local v0, "activePhone":I
    if-ne v4, v0, :cond_2

    const-string v1, "3gpp2"

    .line 184
    .local v1, "format":Ljava/lang/String;
    :goto_0
    invoke-static {p0, v1}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v2

    .line 186
    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    if-nez v3, :cond_1

    .line 188
    :cond_0
    if-ne v4, v0, :cond_3

    const-string v1, "3gpp"

    .line 190
    :goto_1
    invoke-static {p0, v1}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v2

    .line 192
    :cond_1
    return-object v2

    .line 182
    .end local v1    # "format":Ljava/lang/String;
    :cond_2
    const-string v1, "3gpp"

    goto :goto_0

    .line 188
    .restart local v1    # "format":Ljava/lang/String;
    :cond_3
    const-string v1, "3gpp2"

    goto :goto_1
.end method

.method public static createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;
    .locals 4
    .param p0, "pdu"    # [B
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 210
    const-string v1, "3gpp2"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    .line 219
    .local v0, "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :goto_0
    new-instance v1, Landroid/telephony/SmsMessage;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    .end local v0    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :goto_1
    return-object v1

    .line 212
    :cond_0
    const-string v1, "3gpp"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 213
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    .restart local v0    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    goto :goto_0

    .line 215
    .end local v0    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :cond_1
    const-string v1, "SmsMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createFromPdu(): unsupported message format "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static encodeUCS2(Ljava/lang/String;[B)[B
    .locals 7
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "header"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 721
    const-string v3, "utf-16be"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 723
    .local v1, "textPart":[B
    if-eqz p1, :cond_0

    .line 725
    array-length v3, p1

    array-length v4, v1

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    new-array v2, v3, [B

    .line 727
    .local v2, "userData":[B
    array-length v3, p1

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    .line 728
    array-length v3, p1

    invoke-static {p1, v5, v2, v6, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 729
    array-length v3, p1

    add-int/lit8 v3, v3, 0x1

    array-length v4, v1

    invoke-static {v1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 734
    :goto_0
    array-length v3, v2

    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [B

    .line 735
    .local v0, "ret":[B
    array-length v3, v2

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v5

    .line 736
    array-length v3, v2

    invoke-static {v2, v5, v0, v6, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 737
    return-object v0

    .line 732
    .end local v0    # "ret":[B
    .end local v2    # "userData":[B
    :cond_0
    move-object v2, v1

    .restart local v2    # "userData":[B
    goto :goto_0
.end method

.method public static fragmentText(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 364
    invoke-static {}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSms()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-static {p0, v10, v11}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v6

    .line 373
    .local v6, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :goto_0
    iget v9, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-ne v9, v11, :cond_b

    .line 375
    iget v9, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    if-eqz v9, :cond_8

    iget v9, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    if-eqz v9, :cond_8

    .line 376
    const/4 v8, 0x7

    .line 383
    .local v8, "udhLength":I
    :goto_1
    iget v9, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-le v9, v11, :cond_0

    .line 384
    add-int/lit8 v8, v8, 0x6

    .line 387
    :cond_0
    if-eqz v8, :cond_1

    .line 388
    add-int/lit8 v8, v8, 0x1

    .line 391
    :cond_1
    rsub-int v0, v8, 0xa0

    .line 409
    .end local v8    # "udhLength":I
    .local v0, "limit":I
    :cond_2
    :goto_2
    const/4 v1, 0x0

    .line 410
    .local v1, "newMsgBody":Ljava/lang/String;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 411
    .local v4, "r":Landroid/content/res/Resources;
    const v9, 0x112009b

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 412
    invoke-static {p0}, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 414
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 415
    move-object v1, p0

    .line 417
    :cond_4
    const/4 v3, 0x0

    .line 418
    .local v3, "pos":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    .line 419
    .local v7, "textLen":I
    new-instance v5, Ljava/util/ArrayList;

    iget v9, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 420
    .local v5, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_3
    if-ge v3, v7, :cond_6

    .line 421
    const/4 v2, 0x0

    .line 422
    .local v2, "nextPos":I
    iget v9, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-ne v9, v11, :cond_e

    .line 423
    invoke-static {}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSms()Z

    move-result v9

    if-eqz v9, :cond_d

    iget v9, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-ne v9, v11, :cond_d

    .line 425
    sub-int v9, v7, v3

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    add-int v2, v3, v9

    .line 434
    :goto_4
    if-le v2, v3, :cond_5

    if-le v2, v7, :cond_f

    .line 435
    :cond_5
    const-string v9, "SmsMessage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fragmentText failed ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " >= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " or "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " >= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    .end local v2    # "nextPos":I
    :cond_6
    return-object v5

    .line 364
    .end local v0    # "limit":I
    .end local v1    # "newMsgBody":Ljava/lang/String;
    .end local v3    # "pos":I
    .end local v4    # "r":Landroid/content/res/Resources;
    .end local v5    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .end local v7    # "textLen":I
    :cond_7
    invoke-static {p0, v10}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v6

    goto/16 :goto_0

    .line 377
    .restart local v6    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_8
    iget v9, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    if-nez v9, :cond_9

    iget v9, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    if-eqz v9, :cond_a

    .line 378
    :cond_9
    const/4 v8, 0x4

    .restart local v8    # "udhLength":I
    goto/16 :goto_1

    .line 380
    .end local v8    # "udhLength":I
    :cond_a
    const/4 v8, 0x0

    .restart local v8    # "udhLength":I
    goto/16 :goto_1

    .line 393
    .end local v8    # "udhLength":I
    :cond_b
    iget v9, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-le v9, v11, :cond_c

    .line 394
    const/16 v0, 0x86

    .line 401
    .restart local v0    # "limit":I
    invoke-static {}, Landroid/telephony/SmsMessage;->hasEmsSupport()Z

    move-result v9

    if-nez v9, :cond_2

    iget v9, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    const/16 v10, 0xa

    if-ge v9, v10, :cond_2

    .line 402
    add-int/lit8 v0, v0, -0x2

    goto/16 :goto_2

    .line 405
    .end local v0    # "limit":I
    :cond_c
    const/16 v0, 0x8c

    .restart local v0    # "limit":I
    goto/16 :goto_2

    .line 428
    .restart local v1    # "newMsgBody":Ljava/lang/String;
    .restart local v2    # "nextPos":I
    .restart local v3    # "pos":I
    .restart local v4    # "r":Landroid/content/res/Resources;
    .restart local v5    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7    # "textLen":I
    :cond_d
    iget v9, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    iget v10, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    invoke-static {v1, v3, v0, v9, v10}, Lcom/android/internal/telephony/GsmAlphabet;->findGsmSeptetLimitIndex(Ljava/lang/String;IIII)I

    move-result v2

    goto :goto_4

    .line 432
    :cond_e
    invoke-static {v3, v0, v1}, Lcom/android/internal/telephony/SmsMessageBase;->findNextUnicodePosition(IILjava/lang/CharSequence;)I

    move-result v2

    goto :goto_4

    .line 439
    :cond_f
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    move v3, v2

    .line 441
    goto/16 :goto_3
.end method

.method public static getCdmaDeliveryPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)[B
    .locals 21
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "date"    # J

    .prologue
    .line 530
    if-eqz p2, :cond_0

    if-nez p1, :cond_2

    .line 531
    :cond_0
    const-string v18, "SmsMessage"

    const-string v19, "getCDMADeliveryPdu,message =null"

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const/16 v18, 0x0

    .line 646
    :cond_1
    :goto_0
    return-object v18

    .line 538
    :cond_2
    const/4 v11, 0x0

    .line 539
    .local v11, "header":[B
    if-eqz v11, :cond_5

    const/16 v18, 0x40

    :goto_1
    or-int/lit8 v18, v18, 0x0

    move/from16 v0, v18

    int-to-byte v13, v0

    .line 540
    .local v13, "mtiByte":B
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Landroid/telephony/SmsMessage;->getDeliveryPduHeader(Ljava/lang/String;B)Ljava/io/ByteArrayOutputStream;

    move-result-object v12

    .line 542
    .local v12, "headerStream":Ljava/io/ByteArrayOutputStream;
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    const/16 v18, 0xb4

    move/from16 v0, v18

    invoke-direct {v6, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 544
    .local v6, "byteStream":Ljava/io/ByteArrayOutputStream;
    new-instance v8, Ljava/io/DataOutputStream;

    invoke-direct {v8, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 554
    .local v8, "dos":Ljava/io/DataOutputStream;
    const/16 v17, 0x0

    .line 555
    .local v17, "uTeleserviceID":I
    :try_start_0
    move/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 558
    const/4 v4, 0x0

    .line 559
    .local v4, "bIsServicePresent":B
    invoke-virtual {v8, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 562
    const/16 v16, 0x0

    .line 563
    .local v16, "uServicecategory":I
    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 572
    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 574
    .local v7, "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    if-nez v7, :cond_6

    .line 575
    const/16 v18, 0x0

    .line 630
    if-eqz v6, :cond_3

    .line 631
    :try_start_1
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 634
    :cond_3
    if-eqz v8, :cond_4

    .line 635
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->close()V

    .line 638
    :cond_4
    if-eqz v12, :cond_1

    .line 639
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 641
    :catch_0
    move-exception v9

    .line 642
    .local v9, "e":Ljava/io/IOException;
    const-string v19, "SmsMessage"

    const-string v20, "Error close dos"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 539
    .end local v4    # "bIsServicePresent":B
    .end local v6    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v8    # "dos":Ljava/io/DataOutputStream;
    .end local v9    # "e":Ljava/io/IOException;
    .end local v12    # "headerStream":Ljava/io/ByteArrayOutputStream;
    .end local v13    # "mtiByte":B
    .end local v16    # "uServicecategory":I
    .end local v17    # "uTeleserviceID":I
    :cond_5
    const/16 v18, 0x0

    goto :goto_1

    .line 576
    .restart local v4    # "bIsServicePresent":B
    .restart local v6    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v8    # "dos":Ljava/io/DataOutputStream;
    .restart local v12    # "headerStream":Ljava/io/ByteArrayOutputStream;
    .restart local v13    # "mtiByte":B
    .restart local v16    # "uServicecategory":I
    .restart local v17    # "uTeleserviceID":I
    :cond_6
    :try_start_2
    iget v0, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 577
    iget v0, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 578
    iget v0, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 579
    const-string v18, "SmsMessage"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "message type="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "destination add="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "message="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget v0, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 582
    iget v0, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 583
    iget-object v0, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    move-object/from16 v18, v0

    const/16 v19, 0x0

    iget-object v0, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v8, v0, v1, v2}, Ljava/io/DataOutputStream;->write([BII)V

    .line 587
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 588
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 589
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 591
    new-instance v18, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct/range {v18 .. v18}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v14

    .line 592
    .local v14, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    new-instance v15, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v15}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 593
    .local v15, "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    move-object/from16 v0, p2

    iput-object v0, v15, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 595
    const/16 v18, 0x1

    move/from16 v0, v18

    iput-boolean v0, v15, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 596
    const/16 v18, 0x4

    move/from16 v0, v18

    iput v0, v15, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 598
    new-instance v5, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    .line 599
    .local v5, "bearerData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    const/16 v18, 0x1

    move/from16 v0, v18

    iput v0, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    .line 601
    const/16 v18, 0x0

    move/from16 v0, v18

    iput-boolean v0, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    .line 602
    const/16 v18, 0x0

    move/from16 v0, v18

    iput-boolean v0, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    .line 603
    const/16 v18, 0x0

    move/from16 v0, v18

    iput-boolean v0, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    .line 604
    const/16 v18, 0x0

    move/from16 v0, v18

    iput-boolean v0, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    .line 606
    iput-object v15, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    .line 608
    const-wide/16 v18, 0x0

    cmp-long v18, p3, v18

    if-lez v18, :cond_7

    .line 609
    new-instance v18, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    invoke-direct/range {v18 .. v18}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;-><init>()V

    move-object/from16 v0, v18

    iput-object v0, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    .line 610
    iget-object v0, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->set(J)V

    .line 614
    :cond_7
    invoke-static {v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B

    move-result-object v10

    .line 615
    .local v10, "encodedBearerData":[B
    if-eqz v10, :cond_b

    .line 617
    array-length v0, v10

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 618
    const-string v18, "SmsMessage"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "encodedBearerData length="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    array-length v0, v10

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    const/16 v18, 0x0

    array-length v0, v10

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v8, v10, v0, v1}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 630
    :goto_2
    if-eqz v6, :cond_8

    .line 631
    :try_start_3
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 634
    :cond_8
    if-eqz v8, :cond_9

    .line 635
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->close()V

    .line 638
    :cond_9
    if-eqz v12, :cond_a

    .line 639
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 646
    .end local v4    # "bIsServicePresent":B
    .end local v5    # "bearerData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    .end local v7    # "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v10    # "encodedBearerData":[B
    .end local v14    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    .end local v15    # "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    .end local v16    # "uServicecategory":I
    :cond_a
    :goto_3
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v18

    goto/16 :goto_0

    .line 623
    .restart local v4    # "bIsServicePresent":B
    .restart local v5    # "bearerData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    .restart local v7    # "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v10    # "encodedBearerData":[B
    .restart local v14    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    .restart local v15    # "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    .restart local v16    # "uServicecategory":I
    :cond_b
    const/16 v18, 0x0

    :try_start_4
    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 626
    .end local v4    # "bIsServicePresent":B
    .end local v5    # "bearerData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    .end local v7    # "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v10    # "encodedBearerData":[B
    .end local v14    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    .end local v15    # "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    .end local v16    # "uServicecategory":I
    :catch_1
    move-exception v9

    .line 627
    .restart local v9    # "e":Ljava/io/IOException;
    :try_start_5
    const-string v18, "SmsMessage"

    const-string v19, "Error writing dos"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 630
    if-eqz v6, :cond_c

    .line 631
    :try_start_6
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 634
    :cond_c
    if-eqz v8, :cond_d

    .line 635
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->close()V

    .line 638
    :cond_d
    if-eqz v12, :cond_a

    .line 639
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    .line 641
    :catch_2
    move-exception v9

    .line 642
    const-string v18, "SmsMessage"

    const-string v19, "Error close dos"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 641
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v4    # "bIsServicePresent":B
    .restart local v5    # "bearerData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    .restart local v7    # "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v10    # "encodedBearerData":[B
    .restart local v14    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    .restart local v15    # "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    .restart local v16    # "uServicecategory":I
    :catch_3
    move-exception v9

    .line 642
    .restart local v9    # "e":Ljava/io/IOException;
    const-string v18, "SmsMessage"

    const-string v19, "Error close dos"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 629
    .end local v4    # "bIsServicePresent":B
    .end local v5    # "bearerData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    .end local v7    # "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v9    # "e":Ljava/io/IOException;
    .end local v10    # "encodedBearerData":[B
    .end local v14    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    .end local v15    # "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    .end local v16    # "uServicecategory":I
    :catchall_0
    move-exception v18

    .line 630
    if-eqz v6, :cond_e

    .line 631
    :try_start_7
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 634
    :cond_e
    if-eqz v8, :cond_f

    .line 635
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->close()V

    .line 638
    :cond_f
    if-eqz v12, :cond_10

    .line 639
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 643
    :cond_10
    :goto_4
    throw v18

    .line 641
    :catch_4
    move-exception v9

    .line 642
    .restart local v9    # "e":Ljava/io/IOException;
    const-string v19, "SmsMessage"

    const-string v20, "Error close dos"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method public static getDeliveryPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)[B
    .locals 9
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "date"    # J
    .param p5, "subId"    # I

    .prologue
    .line 491
    invoke-static {p5}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSms(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    invoke-static {p0, p1, p2, p3, p4}, Landroid/telephony/SmsMessage;->getCdmaDeliveryPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)[B

    move-result-object v0

    .line 494
    :goto_0
    return-object v0

    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-static/range {v1 .. v7}, Landroid/telephony/SmsMessage;->getGsmDeliveryPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J[BI)[B

    move-result-object v0

    goto :goto_0
.end method

.method private static getDeliveryPduHeader(Ljava/lang/String;B)Ljava/io/ByteArrayOutputStream;
    .locals 6
    .param p0, "destinationAddress"    # Ljava/lang/String;
    .param p1, "mtiByte"    # B

    .prologue
    const/4 v3, 0x0

    .line 504
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0xb4

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 506
    .local v0, "bo":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 509
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 513
    .local v1, "daBytes":[B
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v4, v2, 0x2

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xf0

    const/16 v5, 0xf0

    if-ne v2, v5, :cond_0

    const/4 v2, 0x1

    :goto_0
    sub-int v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 517
    array-length v2, v1

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 520
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 521
    return-object v0

    :cond_0
    move v2, v3

    .line 513
    goto :goto_0
.end method

.method public static getGsmDeliveryPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J[BI)[B
    .locals 9
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "date"    # J
    .param p5, "header"    # [B
    .param p6, "encoding"    # I

    .prologue
    .line 656
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 657
    :cond_0
    const/4 v6, 0x0

    .line 713
    :goto_0
    return-object v6

    .line 661
    :cond_1
    if-eqz p5, :cond_3

    const/16 v6, 0x40

    :goto_1
    or-int/lit8 v6, v6, 0x0

    int-to-byte v2, v6

    .line 662
    .local v2, "mtiByte":B
    invoke-static {p1, v2}, Landroid/telephony/SmsMessage;->getDeliveryPduHeader(Ljava/lang/String;B)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 665
    .local v0, "bo":Ljava/io/ByteArrayOutputStream;
    if-nez p6, :cond_2

    .line 667
    const/4 p6, 0x1

    .line 670
    :cond_2
    const/4 v6, 0x1

    if-ne p6, v6, :cond_4

    .line 671
    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_0
    invoke-static {p2, p5, v6, v7}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 694
    .local v5, "userData":[B
    :goto_2
    const/4 v6, 0x1

    if-ne p6, v6, :cond_6

    .line 695
    const/4 v6, 0x0

    aget-byte v6, v5, v6

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0xa0

    if-le v6, v7, :cond_5

    .line 697
    const/4 v6, 0x0

    goto :goto_0

    .line 661
    .end local v0    # "bo":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "mtiByte":B
    .end local v5    # "userData":[B
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 674
    .restart local v0    # "bo":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "mtiByte":B
    :cond_4
    :try_start_1
    invoke-static {p2, p5}, Landroid/telephony/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .restart local v5    # "userData":[B
    goto :goto_2

    .line 675
    .end local v5    # "userData":[B
    :catch_0
    move-exception v4

    .line 676
    .local v4, "uex":Ljava/io/UnsupportedEncodingException;
    :try_start_2
    const-string v6, "GSM"

    const-string v7, "Implausible UnsupportedEncodingException "

    invoke-static {v6, v7, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 678
    const/4 v6, 0x0

    goto :goto_0

    .line 681
    .end local v4    # "uex":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 685
    .local v1, "ex":Lcom/android/internal/telephony/EncodeException;
    :try_start_3
    invoke-static {p2, p5}, Landroid/telephony/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v5

    .line 686
    .restart local v5    # "userData":[B
    const/4 p6, 0x3

    goto :goto_2

    .line 687
    .end local v5    # "userData":[B
    :catch_2
    move-exception v4

    .line 688
    .restart local v4    # "uex":Ljava/io/UnsupportedEncodingException;
    const-string v6, "GSM"

    const-string v7, "Implausible UnsupportedEncodingException "

    invoke-static {v6, v7, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 690
    const/4 v6, 0x0

    goto :goto_0

    .line 699
    .end local v1    # "ex":Lcom/android/internal/telephony/EncodeException;
    .end local v4    # "uex":Ljava/io/UnsupportedEncodingException;
    .restart local v5    # "userData":[B
    :cond_5
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 709
    :goto_3
    invoke-static {p3, p4}, Landroid/telephony/SmsMessage;->getTimestamp(J)[B

    move-result-object v3

    .line 710
    .local v3, "timestamp":[B
    const/4 v6, 0x0

    array-length v7, v3

    invoke-virtual {v0, v3, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 712
    const/4 v6, 0x0

    array-length v7, v5

    invoke-virtual {v0, v5, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 713
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    goto :goto_0

    .line 701
    .end local v3    # "timestamp":[B
    :cond_6
    const/4 v6, 0x0

    aget-byte v6, v5, v6

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x8c

    if-le v6, v7, :cond_7

    .line 703
    const/4 v6, 0x0

    goto :goto_0

    .line 707
    :cond_7
    const/16 v6, 0xb

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_3
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 1
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z

    .prologue
    .line 793
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

    move-result v0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/telephony/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Landroid/telephony/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 2
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "subId"    # I

    .prologue
    .line 814
    invoke-static {p4}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSms(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 815
    const/4 v1, 0x0

    invoke-static {p0, p1, p2, p3, v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 822
    .local v0, "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :goto_0
    new-instance v1, Landroid/telephony/SmsMessage$SubmitPdu;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    return-object v1

    .line 818
    .end local v0    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    .restart local v0    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;S[BZ)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 2
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "destinationPort"    # S
    .param p3, "data"    # [B
    .param p4, "statusReportRequested"    # Z

    .prologue
    .line 843
    invoke-static {}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSms()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 844
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 851
    .local v0, "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :goto_0
    new-instance v1, Landroid/telephony/SmsMessage$SubmitPdu;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    return-object v1

    .line 847
    .end local v0    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    .restart local v0    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_0
.end method

.method public static getTPLayerLengthForPDU(Ljava/lang/String;)I
    .locals 1
    .param p0, "pdu"    # Ljava/lang/String;

    .prologue
    .line 306
    invoke-static {}, Landroid/telephony/SmsMessage;->isCdmaVoice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTPLayerLengthForPDU(Ljava/lang/String;)I

    move-result v0

    .line 309
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getTPLayerLengthForPDU(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private static getTimestamp(J)[B
    .locals 16
    .param p0, "time"    # J

    .prologue
    .line 744
    const/4 v13, 0x7

    new-array v9, v13, [B

    .line 745
    .local v9, "timestamp":[B
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v13, "yyMMddkkmmss:Z"

    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v6, v13, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 746
    .local v6, "sdf":Ljava/text/SimpleDateFormat;
    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 748
    .local v1, "date":[Ljava/lang/String;
    array-length v13, v1

    add-int/lit8 v13, v13, -0x1

    aget-object v11, v1, v13

    .line 749
    .local v11, "timezone":Ljava/lang/String;
    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v11, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 750
    .local v8, "signMark":Ljava/lang/String;
    const/4 v13, 0x1

    const/4 v14, 0x3

    invoke-virtual {v11, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 751
    .local v3, "hour":I
    const/4 v13, 0x3

    invoke-virtual {v11, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 752
    .local v5, "min":I
    mul-int/lit8 v13, v3, 0x4

    div-int/lit8 v14, v5, 0xf

    add-int v12, v13, v14

    .line 754
    .local v12, "timezoneValue":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v14, 0x0

    aget-object v14, v1, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 756
    .local v10, "timestampStr":Ljava/lang/String;
    const/4 v2, 0x0

    .line 757
    .local v2, "digitCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v4, v13, :cond_1

    .line 758
    invoke-virtual {v10, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 759
    .local v0, "c":C
    and-int/lit8 v13, v2, 0x1

    const/4 v14, 0x1

    if-ne v13, v14, :cond_0

    const/4 v7, 0x4

    .line 760
    .local v7, "shift":I
    :goto_1
    shr-int/lit8 v13, v2, 0x1

    aget-byte v14, v9, v13

    invoke-static {v0}, Landroid/telephony/SmsMessage;->charToBCD(C)I

    move-result v15

    and-int/lit8 v15, v15, 0xf

    shl-int/2addr v15, v7

    int-to-byte v15, v15

    or-int/2addr v14, v15

    int-to-byte v14, v14

    aput-byte v14, v9, v13

    .line 761
    add-int/lit8 v2, v2, 0x1

    .line 757
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 759
    .end local v7    # "shift":I
    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    .line 764
    .end local v0    # "c":C
    :cond_1
    const-string v13, "-"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 765
    array-length v13, v9

    add-int/lit8 v13, v13, -0x1

    array-length v14, v9

    add-int/lit8 v14, v14, -0x1

    aget-byte v14, v9, v14

    or-int/lit8 v14, v14, 0x8

    int-to-byte v14, v14

    aput-byte v14, v9, v13

    .line 768
    :cond_2
    return-object v9
.end method

.method public static hasEmsSupport()Z
    .locals 10

    .prologue
    const/4 v8, 0x1

    .line 1155
    invoke-static {}, Landroid/telephony/SmsMessage;->isNoEmsSupportConfigListExisted()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1177
    .local v0, "arr$":[Landroid/telephony/SmsMessage$NoEmsSupportConfig;
    .local v2, "gid":Ljava/lang/String;
    .local v3, "i$":I
    .local v4, "identity":J
    .local v6, "len$":I
    .local v7, "simOperator":Ljava/lang/String;
    :cond_0
    :goto_0
    return v8

    .line 1161
    .end local v0    # "arr$":[Landroid/telephony/SmsMessage$NoEmsSupportConfig;
    .end local v2    # "gid":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "identity":J
    .end local v6    # "len$":I
    .end local v7    # "simOperator":Ljava/lang/String;
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1163
    .restart local v4    # "identity":J
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSimOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    .line 1164
    .restart local v7    # "simOperator":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1166
    .restart local v2    # "gid":Ljava/lang/String;
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1169
    sget-object v0, Landroid/telephony/SmsMessage;->mNoEmsSupportConfigList:[Landroid/telephony/SmsMessage$NoEmsSupportConfig;

    .restart local v0    # "arr$":[Landroid/telephony/SmsMessage$NoEmsSupportConfig;
    array-length v6, v0

    .restart local v6    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_1
    if-ge v3, v6, :cond_0

    aget-object v1, v0, v3

    .line 1170
    .local v1, "currentConfig":Landroid/telephony/SmsMessage$NoEmsSupportConfig;
    iget-object v9, v1, Landroid/telephony/SmsMessage$NoEmsSupportConfig;->mOperatorNumber:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, v1, Landroid/telephony/SmsMessage$NoEmsSupportConfig;->mGid1:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, v1, Landroid/telephony/SmsMessage$NoEmsSupportConfig;->mGid1:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, v1, Landroid/telephony/SmsMessage$NoEmsSupportConfig;->mGid1:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1174
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 1166
    .end local v0    # "arr$":[Landroid/telephony/SmsMessage$NoEmsSupportConfig;
    .end local v1    # "currentConfig":Landroid/telephony/SmsMessage$NoEmsSupportConfig;
    .end local v2    # "gid":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "simOperator":Ljava/lang/String;
    :catchall_0
    move-exception v8

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8

    .line 1169
    .restart local v0    # "arr$":[Landroid/telephony/SmsMessage$NoEmsSupportConfig;
    .restart local v1    # "currentConfig":Landroid/telephony/SmsMessage$NoEmsSupportConfig;
    .restart local v2    # "gid":Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v6    # "len$":I
    .restart local v7    # "simOperator":Ljava/lang/String;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private static isCdmaVoice()Z
    .locals 1

    .prologue
    .line 1136
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SmsMessage;->isCdmaVoice(I)Z

    move-result v0

    return v0
.end method

.method private static isCdmaVoice(I)Z
    .locals 2
    .param p0, "subId"    # I

    .prologue
    .line 1146
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v0

    .line 1147
    .local v0, "activePhone":I
    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isNoEmsSupportConfigListExisted()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    .line 1232
    sget-boolean v4, Landroid/telephony/SmsMessage;->mIsNoEmsSupportConfigListLoaded:Z

    if-nez v4, :cond_1

    .line 1233
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 1234
    .local v2, "r":Landroid/content/res/Resources;
    if-eqz v2, :cond_1

    .line 1235
    const v4, 0x107003d

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1237
    .local v1, "listArray":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v4, v1

    if-lez v4, :cond_0

    .line 1238
    array-length v4, v1

    new-array v4, v4, [Landroid/telephony/SmsMessage$NoEmsSupportConfig;

    sput-object v4, Landroid/telephony/SmsMessage;->mNoEmsSupportConfigList:[Landroid/telephony/SmsMessage$NoEmsSupportConfig;

    .line 1239
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 1240
    sget-object v4, Landroid/telephony/SmsMessage;->mNoEmsSupportConfigList:[Landroid/telephony/SmsMessage$NoEmsSupportConfig;

    new-instance v5, Landroid/telephony/SmsMessage$NoEmsSupportConfig;

    aget-object v6, v1, v0

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/telephony/SmsMessage$NoEmsSupportConfig;-><init>([Ljava/lang/String;)V

    aput-object v5, v4, v0

    .line 1239
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1243
    .end local v0    # "i":I
    :cond_0
    sput-boolean v3, Landroid/telephony/SmsMessage;->mIsNoEmsSupportConfigListLoaded:Z

    .line 1247
    .end local v1    # "listArray":[Ljava/lang/String;
    :cond_1
    sget-object v4, Landroid/telephony/SmsMessage;->mNoEmsSupportConfigList:[Landroid/telephony/SmsMessage$NoEmsSupportConfig;

    if-eqz v4, :cond_2

    sget-object v4, Landroid/telephony/SmsMessage;->mNoEmsSupportConfigList:[Landroid/telephony/SmsMessage$NoEmsSupportConfig;

    array-length v4, v4

    if-eqz v4, :cond_2

    .line 1251
    :goto_1
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static newFromCMT([Ljava/lang/String;)Landroid/telephony/SmsMessage;
    .locals 2
    .param p0, "lines"    # [Ljava/lang/String;

    .prologue
    .line 233
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->newFromCMT([Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    .line 236
    .local v0, "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    new-instance v1, Landroid/telephony/SmsMessage;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    return-object v1
.end method

.method public static newFromParcel(Landroid/os/Parcel;)Landroid/telephony/SmsMessage;
    .locals 2
    .param p0, "p"    # Landroid/os/Parcel;

    .prologue
    .line 242
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->newFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    .line 245
    .local v0, "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    new-instance v1, Landroid/telephony/SmsMessage;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    return-object v1
.end method

.method public static shouldAppendPageNumberAsPrefix()Z
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 1185
    invoke-static {}, Landroid/telephony/SmsMessage;->isNoEmsSupportConfigListExisted()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1207
    .local v0, "arr$":[Landroid/telephony/SmsMessage$NoEmsSupportConfig;
    .local v2, "gid":Ljava/lang/String;
    .local v3, "i$":I
    .local v4, "identity":J
    .local v6, "len$":I
    .local v7, "simOperator":Ljava/lang/String;
    :cond_0
    :goto_0
    return v8

    .line 1191
    .end local v0    # "arr$":[Landroid/telephony/SmsMessage$NoEmsSupportConfig;
    .end local v2    # "gid":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "identity":J
    .end local v6    # "len$":I
    .end local v7    # "simOperator":Ljava/lang/String;
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1193
    .restart local v4    # "identity":J
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSimOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    .line 1194
    .restart local v7    # "simOperator":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1196
    .restart local v2    # "gid":Ljava/lang/String;
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1199
    sget-object v0, Landroid/telephony/SmsMessage;->mNoEmsSupportConfigList:[Landroid/telephony/SmsMessage$NoEmsSupportConfig;

    .restart local v0    # "arr$":[Landroid/telephony/SmsMessage$NoEmsSupportConfig;
    array-length v6, v0

    .restart local v6    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_1
    if-ge v3, v6, :cond_0

    aget-object v1, v0, v3

    .line 1200
    .local v1, "currentConfig":Landroid/telephony/SmsMessage$NoEmsSupportConfig;
    iget-object v9, v1, Landroid/telephony/SmsMessage$NoEmsSupportConfig;->mOperatorNumber:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, v1, Landroid/telephony/SmsMessage$NoEmsSupportConfig;->mGid1:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, v1, Landroid/telephony/SmsMessage$NoEmsSupportConfig;->mGid1:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, v1, Landroid/telephony/SmsMessage$NoEmsSupportConfig;->mGid1:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1204
    :cond_2
    iget-boolean v8, v1, Landroid/telephony/SmsMessage$NoEmsSupportConfig;->mIsPrefix:Z

    goto :goto_0

    .line 1196
    .end local v0    # "arr$":[Landroid/telephony/SmsMessage$NoEmsSupportConfig;
    .end local v1    # "currentConfig":Landroid/telephony/SmsMessage$NoEmsSupportConfig;
    .end local v2    # "gid":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "simOperator":Ljava/lang/String;
    :catchall_0
    move-exception v8

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8

    .line 1199
    .restart local v0    # "arr$":[Landroid/telephony/SmsMessage$NoEmsSupportConfig;
    .restart local v1    # "currentConfig":Landroid/telephony/SmsMessage$NoEmsSupportConfig;
    .restart local v2    # "gid":Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v6    # "len$":I
    .restart local v7    # "simOperator":Ljava/lang/String;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private static useCdmaFormatForMoSms()Z
    .locals 1

    .prologue
    .line 1108
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSms(I)Z

    move-result v0

    return v0
.end method

.method private static useCdmaFormatForMoSms(I)Z
    .locals 3
    .param p0, "subId"    # I

    .prologue
    .line 1121
    invoke-static {p0}, Landroid/telephony/SmsManager;->getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;

    move-result-object v0

    .line 1122
    .local v0, "smsManager":Landroid/telephony/SmsManager;
    invoke-virtual {v0}, Landroid/telephony/SmsManager;->isImsSmsSupported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1124
    invoke-static {p0}, Landroid/telephony/SmsMessage;->isCdmaVoice(I)Z

    move-result v1

    .line 1127
    :goto_0
    return v1

    :cond_0
    const-string v1, "3gpp2"

    invoke-virtual {v0}, Landroid/telephony/SmsManager;->getImsSmsFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public getDestinationAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1271
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getDestinationAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayMessageBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 906
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayOriginatingAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 876
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmailBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 939
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getEmailBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmailFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 947
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getEmailFrom()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncodingType()I
    .locals 1

    .prologue
    .line 1298
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getEncodingType()I

    move-result v0

    return v0
.end method

.method public getIndexOnIcc()I
    .locals 1

    .prologue
    .line 1061
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    move-result v0

    return v0
.end method

.method public getIndexOnSim()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1052
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    move-result v0

    return v0
.end method

.method public getMessageBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 884
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageClass()Landroid/telephony/SmsMessage$MessageClass;
    .locals 2

    .prologue
    .line 891
    sget-object v0, Landroid/telephony/SmsMessage$1;->$SwitchMap$com$android$internal$telephony$SmsConstants$MessageClass:[I

    iget-object v1, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsConstants$MessageClass;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 896
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->UNKNOWN:Landroid/telephony/SmsMessage$MessageClass;

    :goto_0
    return-object v0

    .line 892
    :pswitch_0
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    goto :goto_0

    .line 893
    :pswitch_1
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->CLASS_1:Landroid/telephony/SmsMessage$MessageClass;

    goto :goto_0

    .line 894
    :pswitch_2
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->CLASS_2:Landroid/telephony/SmsMessage$MessageClass;

    goto :goto_0

    .line 895
    :pswitch_3
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->CLASS_3:Landroid/telephony/SmsMessage$MessageClass;

    goto :goto_0

    .line 891
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getOriginatingAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 867
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPdu()[B
    .locals 1

    .prologue
    .line 1013
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v0

    return-object v0
.end method

.method public getProtocolIdentifier()I
    .locals 1

    .prologue
    .line 954
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getProtocolIdentifier()I

    move-result v0

    return v0
.end method

.method public getPseudoSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 914
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getPseudoSubject()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecipientAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1260
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getRecipientAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceCenterAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 859
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 1081
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getStatus()I

    move-result v0

    return v0
.end method

.method public getStatusOnIcc()I
    .locals 1

    .prologue
    .line 1042
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getStatusOnIcc()I

    move-result v0

    return v0
.end method

.method public getStatusOnSim()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1028
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getStatusOnIcc()I

    move-result v0

    return v0
.end method

.method public getSubId()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Landroid/telephony/SmsMessage;->mSubId:I

    return v0
.end method

.method public getTimestampMillis()J
    .locals 2

    .prologue
    .line 921
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUserData()[B
    .locals 1

    .prologue
    .line 1004
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getUserData()[B

    move-result-object v0

    return-object v0
.end method

.method public getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;
    .locals 1

    .prologue
    .line 1282
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v0

    return-object v0
.end method

.method public isCphsMwiMessage()Z
    .locals 1

    .prologue
    .line 972
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isCphsMwiMessage()Z

    move-result v0

    return v0
.end method

.method public isEmail()Z
    .locals 1

    .prologue
    .line 931
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isEmail()Z

    move-result v0

    return v0
.end method

.method public isMWIClearMessage()Z
    .locals 1

    .prologue
    .line 980
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isMWIClearMessage()Z

    move-result v0

    return v0
.end method

.method public isMWISetMessage()Z
    .locals 1

    .prologue
    .line 988
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isMWISetMessage()Z

    move-result v0

    return v0
.end method

.method public isMwiDontStore()Z
    .locals 1

    .prologue
    .line 996
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isMwiDontStore()Z

    move-result v0

    return v0
.end method

.method public isReplace()Z
    .locals 1

    .prologue
    .line 962
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isReplace()Z

    move-result v0

    return v0
.end method

.method public isReplyPathPresent()Z
    .locals 1

    .prologue
    .line 1096
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isReplyPathPresent()Z

    move-result v0

    return v0
.end method

.method public isStatusReportMessage()Z
    .locals 1

    .prologue
    .line 1088
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isStatusReportMessage()Z

    move-result v0

    return v0
.end method

.method public setSubId(I)V
    .locals 0
    .param p1, "subId"    # I

    .prologue
    .line 125
    iput p1, p0, Landroid/telephony/SmsMessage;->mSubId:I

    .line 126
    return-void
.end method
