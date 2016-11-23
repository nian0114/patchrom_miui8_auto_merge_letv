.class public Lcom/android/internal/telephony/logdigger/SystemTechInfo;
.super Ljava/lang/Object;
.source "SystemTechInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/logdigger/SystemTechInfo$PlatformType;
    }
.end annotation


# static fields
.field private static final PROP_CMD:Ljava/lang/String; = "/system/bin/getprop"

.field private static final TAG:Ljava/lang/String; = "SystemTechInfo"

.field private static sInstance:Lcom/android/internal/telephony/logdigger/SystemTechInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/android/internal/telephony/logdigger/SystemTechInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/logdigger/SystemTechInfo;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/logdigger/SystemTechInfo;->sInstance:Lcom/android/internal/telephony/logdigger/SystemTechInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static getDefault()Lcom/android/internal/telephony/logdigger/SystemTechInfo;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/android/internal/telephony/logdigger/SystemTechInfo;->sInstance:Lcom/android/internal/telephony/logdigger/SystemTechInfo;

    return-object v0
.end method

.method public static getDeviceName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ro.product.model"

    invoke-static {v1}, Lcom/android/internal/telephony/logdigger/SystemTechInfo;->getprop(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ro.build.product"

    invoke-static {v1}, Lcom/android/internal/telephony/logdigger/SystemTechInfo;->getprop(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPlatform()Lcom/android/internal/telephony/logdigger/SystemTechInfo$PlatformType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 53
    const-string v1, "ro.board.platform"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/android/internal/telephony/logdigger/SystemTechInfo;->getprop(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "sValue":Ljava/lang/String;
    const/4 v1, 0x2

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    sget-object v1, Lcom/android/internal/telephony/logdigger/SystemTechInfo$PlatformType;->Mediatek:Lcom/android/internal/telephony/logdigger/SystemTechInfo$PlatformType;

    .line 59
    :goto_0
    return-object v1

    .line 56
    :cond_0
    const/4 v1, 0x3

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "msm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    sget-object v1, Lcom/android/internal/telephony/logdigger/SystemTechInfo$PlatformType;->Qualcomm:Lcom/android/internal/telephony/logdigger/SystemTechInfo$PlatformType;

    goto :goto_0

    .line 59
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/logdigger/SystemTechInfo$PlatformType;->Unknown:Lcom/android/internal/telephony/logdigger/SystemTechInfo$PlatformType;

    goto :goto_0
.end method

.method public static getprop(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 37
    const-string v0, "unknown"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/logdigger/SystemTechInfo;->getprop(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getprop(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 41
    move-object v4, p1

    .line 43
    .local v4, "value":Ljava/lang/String;
    :try_start_0
    const-string v5, "android.os.SystemProperties"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 44
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "get"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 45
    .local v3, "get":Ljava/lang/reflect/Method;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    const-string v7, "unknown"

    aput-object v7, v5, v6

    invoke-virtual {v3, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "get":Ljava/lang/reflect/Method;
    :goto_0
    return-object v4

    .line 46
    :catch_0
    move-exception v2

    .line 47
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "SystemTechInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get property error, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isDebugType()Z
    .locals 4

    .prologue
    .line 107
    const-string v2, "ro.build.type"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "buidType":Ljava/lang/String;
    const-string v2, "userdebug"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 109
    .local v1, "isUserDebug":Z
    return v1
.end method

.method public static isQcPlatform()Z
    .locals 2

    .prologue
    .line 63
    invoke-static {}, Lcom/android/internal/telephony/logdigger/SystemTechInfo;->getPlatform()Lcom/android/internal/telephony/logdigger/SystemTechInfo$PlatformType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/logdigger/SystemTechInfo$PlatformType;->Qualcomm:Lcom/android/internal/telephony/logdigger/SystemTechInfo$PlatformType;

    if-ne v0, v1, :cond_0

    .line 64
    const/4 v0, 0x1

    .line 66
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public execCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    .line 84
    .local v4, "runtime":Ljava/lang/Runtime;
    :try_start_0
    invoke-virtual {v4, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 85
    .local v3, "proc":Ljava/lang/Process;
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    move-result v6

    if-eqz v6, :cond_0

    .line 86
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SystemTechInfo exit value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Process;->exitValue()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 88
    :cond_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 90
    .local v1, "in":Ljava/io/BufferedReader;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 91
    .local v5, "stringBuffer":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 92
    .local v2, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 93
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 94
    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    :cond_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 100
    .end local v1    # "in":Ljava/io/BufferedReader;
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "proc":Ljava/lang/Process;
    .end local v5    # "stringBuffer":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const-string v6, "SystemTechInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "InterruptedException:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/4 v6, 0x0

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v6

    .line 98
    .restart local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v3    # "proc":Ljava/lang/Process;
    .restart local v5    # "stringBuffer":Ljava/lang/StringBuffer;
    :cond_2
    :try_start_1
    const-string v6, "SystemTechInfo"

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    goto :goto_2

    .line 100
    .end local v1    # "in":Ljava/io/BufferedReader;
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "proc":Ljava/lang/Process;
    .end local v5    # "stringBuffer":Ljava/lang/StringBuffer;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public getAllProperty()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const-string v0, "/system/bin/getprop"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/logdigger/SystemTechInfo;->execCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
