.class public Lcom/letv/domain/net/VolleyErrorHelper;
.super Ljava/lang/Object;
.source "VolleyErrorHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMessageCode(Ljava/lang/Object;)I
    .locals 1
    .param p0, "error"    # Ljava/lang/Object;

    .prologue
    instance-of v0, p0, Lcom/android/volley/TimeoutError;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/letv/domain/net/VolleyErrorHelper;->isServerProblem(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/letv/domain/net/VolleyErrorHelper;->handleServerError(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/letv/domain/net/VolleyErrorHelper;->isNetworkProblem(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x2

    goto :goto_0

    :cond_2
    const/4 v0, -0x4

    goto :goto_0
.end method

.method private static handleServerError(Ljava/lang/Object;)I
    .locals 4
    .param p0, "err"    # Ljava/lang/Object;

    .prologue
    const/4 v2, -0x3

    move-object v0, p0

    check-cast v0, Lcom/android/volley/VolleyError;

    .local v0, "error":Lcom/android/volley/VolleyError;
    iget-object v1, v0, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    .local v1, "response":Lcom/android/volley/NetworkResponse;
    if-eqz v1, :cond_0

    iget v3, v1, Lcom/android/volley/NetworkResponse;->statusCode:I

    sparse-switch v3, :sswitch_data_0

    :goto_0
    :sswitch_0
    return v2

    :cond_0
    const/4 v2, -0x4

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x191 -> :sswitch_0
        0x194 -> :sswitch_0
        0x1a6 -> :sswitch_0
    .end sparse-switch
.end method

.method private static isNetworkProblem(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "error"    # Ljava/lang/Object;

    .prologue
    instance-of v0, p0, Lcom/android/volley/NetworkError;

    return v0
.end method

.method private static isServerProblem(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "error"    # Ljava/lang/Object;

    .prologue
    instance-of v0, p0, Lcom/android/volley/ServerError;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/android/volley/AuthFailureError;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
