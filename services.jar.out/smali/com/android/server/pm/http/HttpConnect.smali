.class public Lcom/android/server/pm/http/HttpConnect;
.super Ljava/lang/Object;
.source "HttpConnect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/http/HttpConnect$1;,
        Lcom/android/server/pm/http/HttpConnect$ConnectChangeReceiver;,
        Lcom/android/server/pm/http/HttpConnect$WorkHandler;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "Area"

.field private static mGson:Lcom/google/gson/Gson;


# instance fields
.field private final IMEITOAREA:I

.field private mAreaParams:Lcom/android/server/pm/http/Base;

.field mConnectChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mWorkHandler:Lcom/android/server/pm/http/HttpConnect$WorkHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/pm/http/HttpConnect;->mGson:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/http/HttpConnect;->mAreaParams:Lcom/android/server/pm/http/Base;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/pm/http/HttpConnect;->IMEITOAREA:I

    iput-object v1, p0, Lcom/android/server/pm/http/HttpConnect;->mConnectChangeReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/pm/http/HttpConnect;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/server/pm/http/HttpConnect;->initWorkHandler()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pm/http/HttpConnect;)Lcom/android/server/pm/http/Response;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/http/HttpConnect;

    .prologue
    invoke-direct {p0}, Lcom/android/server/pm/http/HttpConnect;->imeiToArea()Lcom/android/server/pm/http/Response;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/pm/http/HttpConnect;)Lcom/android/server/pm/http/Base;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/http/HttpConnect;

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/http/HttpConnect;->mAreaParams:Lcom/android/server/pm/http/Base;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/pm/http/HttpConnect;Lcom/android/server/pm/http/Base;)Lcom/android/server/pm/http/Base;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/http/HttpConnect;
    .param p1, "x1"    # Lcom/android/server/pm/http/Base;

    .prologue
    iput-object p1, p0, Lcom/android/server/pm/http/HttpConnect;->mAreaParams:Lcom/android/server/pm/http/Base;

    return-object p1
.end method

.method static synthetic access$200(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/Class;

    .prologue
    invoke-static {p0, p1}, Lcom/android/server/pm/http/HttpConnect;->analysisRespond(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/pm/http/HttpConnect;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/http/HttpConnect;

    .prologue
    invoke-direct {p0}, Lcom/android/server/pm/http/HttpConnect;->sendSaleChangeBroadcast()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/pm/http/HttpConnect;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/http/HttpConnect;

    .prologue
    invoke-direct {p0}, Lcom/android/server/pm/http/HttpConnect;->unRegisterConnectChangeReceiver()V

    return-void
.end method

.method private static analysisRespond(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .param p0, "respond"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    .local v0, "bean":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    sput-object v2, Lcom/android/server/pm/http/HttpConnect;->mGson:Lcom/google/gson/Gson;

    sget-object v2, Lcom/android/server/pm/http/HttpConnect;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v2, p0, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .end local v0    # "bean":Ljava/lang/Object;, "TT;"
    :cond_0
    :goto_0
    sget-object v2, Lcom/android/server/pm/http/HttpConnect;->mGson:Lcom/google/gson/Gson;

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    sput-object v2, Lcom/android/server/pm/http/HttpConnect;->mGson:Lcom/google/gson/Gson;

    :cond_1
    return-object v0

    .restart local v0    # "bean":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Area"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HttpHelper] analysisRespond catch exception getMessage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " toString()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private imeiToArea()Lcom/android/server/pm/http/Response;
    .locals 8

    .prologue
    const/4 v4, 0x0

    new-instance v2, Lcom/android/server/pm/http/SimpleHttpURLConnection;

    iget-object v5, p0, Lcom/android/server/pm/http/HttpConnect;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/android/server/pm/http/SimpleHttpURLConnection;-><init>(Landroid/content/Context;)V

    .local v2, "hc":Lcom/android/server/pm/http/SimpleHttpURLConnection;
    new-instance v3, Lcom/android/server/pm/http/UrlFactory;

    iget-object v5, p0, Lcom/android/server/pm/http/HttpConnect;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/android/server/pm/http/UrlFactory;-><init>(Landroid/content/Context;)V

    .local v3, "params":Lcom/android/server/pm/http/UrlFactory;
    if-nez v3, :cond_0

    const-string v5, "Area"

    const-string v6, "imeiToArea : get UrlFactory : params is null "

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/pm/http/HttpConnect;->registerConnectChangeReceiver()V

    :goto_0
    return-object v4

    :cond_0
    invoke-virtual {v3}, Lcom/android/server/pm/http/UrlFactory;->getUrl()Ljava/lang/String;

    move-result-object v1

    .local v1, "getUrl":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "Area"

    const-string v6, "imeiToArea : get UrlFactory : getUrl is null "

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/pm/http/HttpConnect;->registerConnectChangeReceiver()V

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .local v4, "response":Lcom/android/server/pm/http/Response;
    :try_start_0
    invoke-virtual {v2, v3}, Lcom/android/server/pm/http/SimpleHttpURLConnection;->exec(Lcom/android/server/pm/http/UrlFactory;)Lcom/android/server/pm/http/Response;
    :try_end_0
    .catch Lcom/android/server/pm/http/exception/NetworkRequestException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/server/pm/http/exception/SignatureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/server/pm/http/exception/MethodRequestException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Lcom/android/server/pm/http/exception/NetworkRequestException;
    const-string v5, "Area"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HttpHelper] registerBusiness, NetworkRequestException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/server/pm/http/exception/NetworkRequestException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Lcom/android/server/pm/http/exception/NetworkRequestException;
    :catch_1
    move-exception v0

    .local v0, "e":Lcom/android/server/pm/http/exception/SignatureException;
    const-string v5, "Area"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HttpHelper] registerBusiness, SignatureException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/server/pm/http/exception/SignatureException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Lcom/android/server/pm/http/exception/SignatureException;
    :catch_2
    move-exception v0

    .local v0, "e":Lcom/android/server/pm/http/exception/MethodRequestException;
    const-string v5, "Area"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HttpHelper] registerBusiness, MethodRequestException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/server/pm/http/exception/MethodRequestException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initWorkHandler()V
    .locals 3

    .prologue
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "saleareahttp"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "mWorkLooper":Landroid/os/Looper;
    new-instance v2, Lcom/android/server/pm/http/HttpConnect$WorkHandler;

    invoke-direct {v2, p0, v0}, Lcom/android/server/pm/http/HttpConnect$WorkHandler;-><init>(Lcom/android/server/pm/http/HttpConnect;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/pm/http/HttpConnect;->mWorkHandler:Lcom/android/server/pm/http/HttpConnect$WorkHandler;

    return-void
.end method

.method private sendSaleChangeBroadcast()V
    .locals 3

    .prologue
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.LETV_ACQUIRE_SALEAREA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/pm/http/HttpConnect;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v1, "Area"

    const-string v2, "sendBroadcast ACTION_ACQUIRE_SALEAREA"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private unRegisterConnectChangeReceiver()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/http/HttpConnect;->mConnectChangeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/http/HttpConnect;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/pm/http/HttpConnect;->mConnectChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/http/HttpConnect;->mConnectChangeReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, "Area"

    const-string v1, "unregisterReceiver CONNECTIVITY_CHANGE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public registerConnectChangeReceiver()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/server/pm/http/HttpConnect;->mConnectChangeReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/pm/http/HttpConnect$ConnectChangeReceiver;

    invoke-direct {v1, p0, v4}, Lcom/android/server/pm/http/HttpConnect$ConnectChangeReceiver;-><init>(Lcom/android/server/pm/http/HttpConnect;Lcom/android/server/pm/http/HttpConnect$1;)V

    iput-object v1, p0, Lcom/android/server/pm/http/HttpConnect;->mConnectChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/pm/http/HttpConnect;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/pm/http/HttpConnect;->mConnectChangeReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-string v1, "Area"

    const-string v2, "registerReceiver CONNECTIVITY_CHANGE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public setAreaInfo()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/server/pm/http/HttpConnect;->mWorkHandler:Lcom/android/server/pm/http/HttpConnect$WorkHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/pm/http/HttpConnect$WorkHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/pm/http/HttpConnect;->mWorkHandler:Lcom/android/server/pm/http/HttpConnect$WorkHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/http/HttpConnect$WorkHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
