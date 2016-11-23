.class public Lcom/letv/domain/utils/NetUtils;
.super Ljava/lang/Object;
.source "NetUtils.java"


# static fields
.field private static final LETV_MODEL:Ljava/lang/String; = "ro.product.letv_model"

.field private static final UNKNOWN:Ljava/lang/String; = "unknown"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRequstHeader(Lcom/letv/domain/bean/DeviceInfo;)Ljava/util/Map;
    .locals 12
    .param p0, "deviceInfo"    # Lcom/letv/domain/bean/DeviceInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/letv/domain/bean/DeviceInfo;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/letv/domain/bean/DeviceInfo;->getApp_name()Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, "app_name":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/letv/domain/bean/DeviceInfo;->getApp_version()Ljava/lang/String;

    move-result-object v1

    .line 23
    .local v1, "app_version":Ljava/lang/String;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 27
    .local v4, "headMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    const-string v8, "android.os.SystemProperties"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 28
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v8, "get"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v2, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 29
    .local v5, "method":Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "ro.product.letv_model"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "unknown"

    aput-object v11, v9, v10

    invoke-virtual {v5, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "method":Ljava/lang/reflect/Method;
    .local v6, "model":Ljava/lang/String;
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Phone/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v0, :cond_0

    const-string v0, "DomainHelper"

    .end local v0    # "app_name":Ljava/lang/String;
    :cond_0
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v1, :cond_1

    const-string v1, "1.0"

    .end local v1    # "app_version":Ljava/lang/String;
    :cond_1
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "letv-domain-common)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 43
    .local v7, "user_agent":Ljava/lang/String;
    const-string v8, "User-Agent"

    invoke-virtual {v4, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-object v4

    .line 30
    .end local v6    # "model":Ljava/lang/String;
    .end local v7    # "user_agent":Ljava/lang/String;
    .restart local v0    # "app_name":Ljava/lang/String;
    .restart local v1    # "app_version":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 31
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 32
    const-string v8, "DomainHelper"

    const-string v9, "invoke SystemProperties.get() wrong, use UNKNOWN as model."

    invoke-static {v8, v9}, Lcom/letv/domain/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string v6, "unknown"

    .restart local v6    # "model":Ljava/lang/String;
    goto :goto_0
.end method
