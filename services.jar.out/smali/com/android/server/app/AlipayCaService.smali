.class public Lcom/android/server/app/AlipayCaService;
.super Landroid/app/IAlipayCaManager$Stub;
.source "AlipayCaService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AlipayCaService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIn:Ljava/io/InputStream;

.field private mOut:Ljava/io/OutputStream;

.field private mSocket:Landroid/net/LocalSocket;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/IAlipayCaManager$Stub;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/server/app/AlipayCaService;->mContext:Landroid/content/Context;

    .line 29
    return-void
.end method

.method private connect()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 70
    iget-object v3, p0, Lcom/android/server/app/AlipayCaService;->mSocket:Landroid/net/LocalSocket;

    if-eqz v3, :cond_0

    .line 88
    :goto_0
    return v2

    .line 73
    :cond_0
    const-string v3, "AlipayCaService"

    const-string v4, "connecting..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :try_start_0
    new-instance v3, Landroid/net/LocalSocket;

    invoke-direct {v3}, Landroid/net/LocalSocket;-><init>()V

    iput-object v3, p0, Lcom/android/server/app/AlipayCaService;->mSocket:Landroid/net/LocalSocket;

    .line 77
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v3, "alipaycad"

    sget-object v4, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v3, v4}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 80
    .local v0, "address":Landroid/net/LocalSocketAddress;
    iget-object v3, p0, Lcom/android/server/app/AlipayCaService;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 82
    iget-object v3, p0, Lcom/android/server/app/AlipayCaService;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/app/AlipayCaService;->mIn:Ljava/io/InputStream;

    .line 83
    iget-object v3, p0, Lcom/android/server/app/AlipayCaService;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/app/AlipayCaService;->mOut:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    .end local v0    # "address":Landroid/net/LocalSocketAddress;
    :catch_0
    move-exception v1

    .line 85
    .local v1, "ex":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/android/server/app/AlipayCaService;->disconnect()V

    .line 86
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private readFully([BI)Z
    .locals 4
    .param p1, "buffer"    # [B
    .param p2, "len"    # I

    .prologue
    const/4 v1, 0x0

    .line 104
    :try_start_0
    iget-object v2, p0, Lcom/android/server/app/AlipayCaService;->mIn:Ljava/io/InputStream;

    const/4 v3, 0x0

    invoke-static {v2, p1, v3, p2}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "ioe":Ljava/io/IOException;
    const-string v2, "AlipayCaService"

    const-string v3, "read exception"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {p0}, Lcom/android/server/app/AlipayCaService;->disconnect()V

    goto :goto_0
.end method

.method private readOutputBuf([B)I
    .locals 6
    .param p1, "outputBuf"    # [B

    .prologue
    const/4 v5, 0x1

    const/4 v1, -0x1

    .line 115
    const/4 v2, 0x2

    invoke-direct {p0, p1, v2}, Lcom/android/server/app/AlipayCaService;->readFully([BI)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 131
    :cond_0
    :goto_0
    return v0

    .line 119
    :cond_1
    const/4 v2, 0x0

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    aget-byte v3, p1, v5

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int v0, v2, v3

    .line 120
    .local v0, "len":I
    const-string v2, "AlipayCaService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "outputBufLen = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    if-lt v0, v5, :cond_2

    array-length v2, p1

    if-le v0, v2, :cond_3

    .line 122
    :cond_2
    const-string v2, "AlipayCaService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid reply length ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {p0}, Lcom/android/server/app/AlipayCaService;->disconnect()V

    move v0, v1

    .line 124
    goto :goto_0

    .line 127
    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/android/server/app/AlipayCaService;->readFully([BI)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 128
    goto :goto_0
.end method


# virtual methods
.method public disconnect()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 92
    const-string v0, "AlipayCaService"

    const-string v1, "disconnecting..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/android/server/app/AlipayCaService;->mSocket:Landroid/net/LocalSocket;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 94
    iget-object v0, p0, Lcom/android/server/app/AlipayCaService;->mIn:Ljava/io/InputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 95
    iget-object v0, p0, Lcom/android/server/app/AlipayCaService;->mOut:Ljava/io/OutputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 97
    iput-object v2, p0, Lcom/android/server/app/AlipayCaService;->mSocket:Landroid/net/LocalSocket;

    .line 98
    iput-object v2, p0, Lcom/android/server/app/AlipayCaService;->mIn:Ljava/io/InputStream;

    .line 99
    iput-object v2, p0, Lcom/android/server/app/AlipayCaService;->mOut:Ljava/io/OutputStream;

    .line 100
    return-void
.end method

.method public invokeAlipayCaCmd([B)[B
    .locals 11
    .param p1, "param"    # [B

    .prologue
    const/4 v10, 0x1

    const/4 v3, 0x0

    const/4 v9, 0x0

    .line 32
    const/16 v6, 0x400

    new-array v1, v6, [B

    .line 33
    .local v1, "inBuf":[B
    const/16 v6, 0x800

    new-array v4, v6, [B

    .line 34
    .local v4, "outputBuf":[B
    const/4 v5, -0x1

    .line 36
    .local v5, "outputBufLen":I
    invoke-direct {p0}, Lcom/android/server/app/AlipayCaService;->connect()Z

    move-result v6

    if-nez v6, :cond_1

    .line 37
    const-string v6, "AlipayCaService"

    const-string v7, "connection failed"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_0
    :goto_0
    return-object v3

    .line 41
    :cond_1
    array-length v2, p1

    .line 42
    .local v2, "inBufLen":I
    const-string v6, "AlipayCaService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "inBufLen = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    if-lt v2, v10, :cond_0

    .line 47
    and-int/lit16 v6, v2, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v9

    .line 48
    shr-int/lit8 v6, v2, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v10

    .line 50
    :try_start_0
    iget-object v6, p0, Lcom/android/server/app/AlipayCaService;->mOut:Ljava/io/OutputStream;

    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-virtual {v6, v1, v7, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 51
    iget-object v6, p0, Lcom/android/server/app/AlipayCaService;->mOut:Ljava/io/OutputStream;

    const/4 v7, 0x0

    invoke-virtual {v6, p1, v7, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_1
    invoke-direct {p0, v4}, Lcom/android/server/app/AlipayCaService;->readOutputBuf([B)I

    move-result v5

    .line 58
    const-string v6, "AlipayCaService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "outputBufLen = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    if-lez v5, :cond_0

    .line 60
    new-array v3, v5, [B

    .line 61
    .local v3, "outParam":[B
    invoke-static {v4, v9, v3, v9, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_0

    .line 52
    .end local v3    # "outParam":[B
    :catch_0
    move-exception v0

    .line 53
    .local v0, "ex":Ljava/io/IOException;
    const-string v6, "AlipayCaService"

    const-string v7, "write error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {p0}, Lcom/android/server/app/AlipayCaService;->disconnect()V

    goto :goto_1
.end method
