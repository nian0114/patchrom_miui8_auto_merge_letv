.class public Lcom/android/server/SdcardDaemonConnector;
.super Ljava/lang/Object;
.source "SdcardDaemonConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final FLAG_ADD_PRI_DIR:I = 0x1

.field private static final FLAG_REMOVE_ALL_DIR:I = 0x0

.field private static final FLAG_REMOVE_PRI_DIR:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SdcardDaemonConnector"


# instance fields
.field private MAX_RETRY_COUNT:I

.field private mFlag:I

.field private mRawString:Ljava/lang/String;

.field private mRetryCount:I

.field private mSdcardOutputStream:Ljava/io/OutputStream;

.field private mSocket:Ljava/lang/String;

.field public mState:Lcom/android/server/MountService$SdcardConnectorState;


# direct methods
.method public constructor <init>(Lcom/android/server/MountService$SdcardConnectorState;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "state"    # Lcom/android/server/MountService$SdcardConnectorState;
    .param p2, "socket"    # Ljava/lang/String;
    .param p3, "rawString"    # Ljava/lang/String;
    .param p4, "flag"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/SdcardDaemonConnector;->mRetryCount:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/SdcardDaemonConnector;->MAX_RETRY_COUNT:I

    iput-object p1, p0, Lcom/android/server/SdcardDaemonConnector;->mState:Lcom/android/server/MountService$SdcardConnectorState;

    iput-object p2, p0, Lcom/android/server/SdcardDaemonConnector;->mSocket:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/SdcardDaemonConnector;->mRawString:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/SdcardDaemonConnector;->mFlag:I

    iget-object v0, p0, Lcom/android/server/SdcardDaemonConnector;->mState:Lcom/android/server/MountService$SdcardConnectorState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/MountService$SdcardConnectorState;->setState(I)V

    return-void
.end method

.method private addOPHeader([BI)[B
    .locals 4
    .param p1, "body"    # [B
    .param p2, "flag"    # I

    .prologue
    array-length v3, p1

    add-int/lit8 v3, v3, 0x1

    new-array v2, v3, [B

    .local v2, "rawData":[B
    int-to-byte v1, p2

    .local v1, "op":B
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    if-nez v0, :cond_0

    aput-byte v1, v2, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v0, -0x1

    aget-byte v3, p1, v3

    aput-byte v3, v2, v0

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method private buildLengthHeader(I)[B
    .locals 3
    .param p1, "n"    # I

    .prologue
    const/4 v1, 0x4

    new-array v0, v1, [B

    .local v0, "b":[B
    const/4 v1, 0x3

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x0

    shr-int/lit8 v2, p1, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method private combineLengthHeader([B[B)[B
    .locals 4
    .param p1, "lengthead"    # [B
    .param p2, "body"    # [B

    .prologue
    array-length v2, p2

    array-length v3, p1

    add-int/2addr v2, v3

    new-array v1, v2, [B

    .local v1, "rawData":[B
    const/4 v0, 0x0

    .local v0, "index":I
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    array-length v2, p1

    if-ge v0, v2, :cond_0

    aget-byte v2, p1, v0

    aput-byte v2, v1, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    array-length v2, p1

    sub-int v2, v0, v2

    aget-byte v2, p2, v2

    aput-byte v2, v1, v0

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method private makeDeliverData(Ljava/lang/StringBuilder;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .param p1, "rawBuilder"    # Ljava/lang/StringBuilder;
    .param p2, "appNameList"    # [Ljava/lang/String;
    .param p3, "folderList"    # [Ljava/lang/String;

    .prologue
    const-string v1, "SdcardDaemonConnector"

    const-string v2, "  makeDeliverData   "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    array-length v1, p2

    array-length v2, p3

    if-eq v1, v2, :cond_1

    :cond_0
    const-string v1, "SdcardDaemonConnector"

    const-string v2, " makeDeliverData  Illegal Argument  "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const-string v1, "{"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_2

    const-string v1, "["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p3, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const-string v1, "}"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SdcardDaemonConnector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " makeDeliverData  rawBuilder= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    :goto_0
    const-string v1, "SdcardDaemonConnector"

    const-string v2, "SdcardDaemonConnector.run  BEGIN "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/server/SdcardDaemonConnector;->mRetryCount:I

    iget v2, p0, Lcom/android/server/SdcardDaemonConnector;->MAX_RETRY_COUNT:I

    if-ge v1, v2, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SdcardDaemonConnector;->setPrivateFolder()V

    iget-object v1, p0, Lcom/android/server/SdcardDaemonConnector;->mState:Lcom/android/server/MountService$SdcardConnectorState;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/MountService$SdcardConnectorState;->setState(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    iget v1, p0, Lcom/android/server/SdcardDaemonConnector;->mRetryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/SdcardDaemonConnector;->mRetryCount:I

    const-string v1, "SdcardDaemonConnector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send data fail retry count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/SdcardDaemonConnector;->mRetryCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v1, "SdcardDaemonConnector"

    const-string v2, "max retry count. send message error"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/SdcardDaemonConnector;->mState:Lcom/android/server/MountService$SdcardConnectorState;

    invoke-virtual {v1, v4}, Lcom/android/server/MountService$SdcardConnectorState;->setState(I)V

    goto :goto_1
.end method

.method public setPrivateFolder()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-string v10, "SdcardDaemonConnector"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setPrivateFolder  mRawString= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/SdcardDaemonConnector;->mRawString:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "; mFlag="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/SdcardDaemonConnector;->mFlag:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/server/SdcardDaemonConnector;->mRawString:Ljava/lang/String;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/server/SdcardDaemonConnector;->mRawString:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_0
    iget v10, p0, Lcom/android/server/SdcardDaemonConnector;->mFlag:I

    if-eqz v10, :cond_2

    const-string v10, "SdcardDaemonConnector"

    const-string v11, "setPrivateFolder  Illegal Argument "

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v10, p0, Lcom/android/server/SdcardDaemonConnector;->mRawString:Ljava/lang/String;

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/server/SdcardDaemonConnector;->mRawString:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_4

    iget-object v10, p0, Lcom/android/server/SdcardDaemonConnector;->mRawString:Ljava/lang/String;

    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .local v1, "body":[B
    array-length v10, v1

    invoke-direct {p0, v10}, Lcom/android/server/SdcardDaemonConnector;->buildLengthHeader(I)[B

    move-result-object v5

    .local v5, "length":[B
    invoke-direct {p0, v5, v1}, Lcom/android/server/SdcardDaemonConnector;->combineLengthHeader([B[B)[B

    move-result-object v6

    .local v6, "rawData":[B
    iget v10, p0, Lcom/android/server/SdcardDaemonConnector;->mFlag:I

    invoke-direct {p0, v6, v10}, Lcom/android/server/SdcardDaemonConnector;->addOPHeader([BI)[B

    move-result-object v7

    .local v7, "sendData":[B
    const-string v10, "SdcardDaemonConnector"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setPrivateFolder rawData="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "; body len: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "body":[B
    .end local v5    # "length":[B
    .end local v6    # "rawData":[B
    :goto_1
    const/4 v8, 0x0

    .local v8, "socket":Landroid/net/LocalSocket;
    :try_start_0
    new-instance v9, Landroid/net/LocalSocket;

    invoke-direct {v9}, Landroid/net/LocalSocket;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v8    # "socket":Landroid/net/LocalSocket;
    .local v9, "socket":Landroid/net/LocalSocket;
    :try_start_1
    new-instance v0, Landroid/net/LocalSocketAddress;

    iget-object v10, p0, Lcom/android/server/SdcardDaemonConnector;->mSocket:Ljava/lang/String;

    sget-object v11, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v10, v11}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .local v0, "address":Landroid/net/LocalSocketAddress;
    const-string v10, "SdcardDaemonConnector"

    const-string v11, "setPrivateFolder  STARTINT CONNECTING socket "

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    iget-object v10, p0, Lcom/android/server/SdcardDaemonConnector;->mState:Lcom/android/server/MountService$SdcardConnectorState;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/android/server/MountService$SdcardConnectorState;->setState(I)V

    invoke-virtual {v9}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/SdcardDaemonConnector;->mSdcardOutputStream:Ljava/io/OutputStream;

    iget-object v10, p0, Lcom/android/server/SdcardDaemonConnector;->mSdcardOutputStream:Ljava/io/OutputStream;

    if-nez v10, :cond_5

    const-string v10, "SdcardDaemonConnector"

    const-string v11, "setPrivateFolder  missing output stream !!!"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_2
    iget-object v10, p0, Lcom/android/server/SdcardDaemonConnector;->mSdcardOutputStream:Ljava/io/OutputStream;

    if-eqz v10, :cond_3

    :try_start_2
    const-string v10, "SdcardDaemonConnector"

    const-string v11, "setPrivateFolder  closing sdcard stream  "

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/server/SdcardDaemonConnector;->mSdcardOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/server/SdcardDaemonConnector;->mSdcardOutputStream:Ljava/io/OutputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_3
    if-eqz v9, :cond_1

    :try_start_3
    invoke-virtual {v9}, Landroid/net/LocalSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    .local v3, "ex":Ljava/io/IOException;
    const-string v10, "SdcardDaemonConnector"

    const-string v11, "setPrivateFolder  Failed closing socket"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    new-instance v10, Ljava/lang/Exception;

    const-string v11, "setPrivateFolder  Failed closing socket"

    invoke-direct {v10, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v10

    .end local v0    # "address":Landroid/net/LocalSocketAddress;
    .end local v3    # "ex":Ljava/io/IOException;
    .end local v7    # "sendData":[B
    .end local v9    # "socket":Landroid/net/LocalSocket;
    :cond_4
    const/4 v10, 0x1

    new-array v4, v10, [B

    .local v4, "flag":[B
    const/4 v10, 0x0

    iget v11, p0, Lcom/android/server/SdcardDaemonConnector;->mFlag:I

    int-to-byte v11, v11

    aput-byte v11, v4, v10

    move-object v7, v4

    .restart local v7    # "sendData":[B
    const-string v10, "SdcardDaemonConnector"

    const-string v11, "setPrivateFolder FLAG_REMOVE_ALL_DIR "

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v4    # "flag":[B
    .restart local v0    # "address":Landroid/net/LocalSocketAddress;
    .restart local v9    # "socket":Landroid/net/LocalSocket;
    :cond_5
    :try_start_4
    const-string v10, "SdcardDaemonConnector "

    const-string v11, "setPrivateFolder  STARTINT SEND socket data "

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/server/SdcardDaemonConnector;->mState:Lcom/android/server/MountService$SdcardConnectorState;

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Lcom/android/server/MountService$SdcardConnectorState;->setState(I)V

    iget-object v10, p0, Lcom/android/server/SdcardDaemonConnector;->mSdcardOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v10, v7}, Ljava/io/OutputStream;->write([B)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catch_1
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    :try_start_5
    const-string v10, "SdcardDaemonConnector"

    const-string v11, "setPrivateFolder  send data fail!!! "

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    new-instance v10, Ljava/lang/Exception;

    const-string v11, "setPrivateFolder  send data fail!!!"

    invoke-direct {v10, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local v0    # "address":Landroid/net/LocalSocketAddress;
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    move-object v8, v9

    .end local v9    # "socket":Landroid/net/LocalSocket;
    .restart local v3    # "ex":Ljava/io/IOException;
    .restart local v8    # "socket":Landroid/net/LocalSocket;
    :goto_3
    :try_start_6
    const-string v10, "SdcardDaemonConnector"

    const-string v11, "setPrivateFolder  send data to sdcard exception "

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    new-instance v10, Ljava/lang/Exception;

    const-string v11, "setPrivateFolder  send data to sdcard exception"

    invoke-direct {v10, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .end local v3    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    :goto_4
    iget-object v11, p0, Lcom/android/server/SdcardDaemonConnector;->mSdcardOutputStream:Ljava/io/OutputStream;

    if-eqz v11, :cond_6

    :try_start_7
    const-string v11, "SdcardDaemonConnector"

    const-string v12, "setPrivateFolder  closing sdcard stream  "

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/android/server/SdcardDaemonConnector;->mSdcardOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V

    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/server/SdcardDaemonConnector;->mSdcardOutputStream:Ljava/io/OutputStream;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_6
    if-eqz v8, :cond_7

    :try_start_8
    invoke-virtual {v8}, Landroid/net/LocalSocket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :cond_7
    throw v10

    .end local v8    # "socket":Landroid/net/LocalSocket;
    .restart local v0    # "address":Landroid/net/LocalSocketAddress;
    .restart local v9    # "socket":Landroid/net/LocalSocket;
    :catch_3
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    const-string v10, "SdcardDaemonConnector"

    const-string v11, "setPrivateFolder  Failed closing output stream "

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    new-instance v10, Ljava/lang/Exception;

    const-string v11, "setPrivateFolder  Failed closing output stream:"

    invoke-direct {v10, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v10

    .end local v0    # "address":Landroid/net/LocalSocketAddress;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v9    # "socket":Landroid/net/LocalSocket;
    .restart local v8    # "socket":Landroid/net/LocalSocket;
    :catch_4
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    const-string v10, "SdcardDaemonConnector"

    const-string v11, "setPrivateFolder  Failed closing output stream "

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    new-instance v10, Ljava/lang/Exception;

    const-string v11, "setPrivateFolder  Failed closing output stream:"

    invoke-direct {v10, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v10

    .end local v2    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v3

    .restart local v3    # "ex":Ljava/io/IOException;
    const-string v10, "SdcardDaemonConnector"

    const-string v11, "setPrivateFolder  Failed closing socket"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    new-instance v10, Ljava/lang/Exception;

    const-string v11, "setPrivateFolder  Failed closing socket"

    invoke-direct {v10, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v10

    .end local v3    # "ex":Ljava/io/IOException;
    .end local v8    # "socket":Landroid/net/LocalSocket;
    .restart local v9    # "socket":Landroid/net/LocalSocket;
    :catchall_1
    move-exception v10

    move-object v8, v9

    .end local v9    # "socket":Landroid/net/LocalSocket;
    .restart local v8    # "socket":Landroid/net/LocalSocket;
    goto :goto_4

    :catch_6
    move-exception v3

    goto :goto_3
.end method
