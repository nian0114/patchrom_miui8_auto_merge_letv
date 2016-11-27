.class public Lcom/letv/leui/util/LeProductConfig;
.super Ljava/lang/Object;
.source "LeProductConfig.java"


# static fields
.field private static final CAMERA_PATH:Ljava/lang/String; = "/sys/class/hwinfo/main_camera/devinfo"

.field public static final DELUXE:I = 0x1

.field private static final DELUXE_INFO:Ljava/lang/String; = "imx230"

.field public static final GENERAL:I = 0x0

.field private static final GENERAL_INFO:Ljava/lang/String; = "ov16880"

.field private static final TAG:Ljava/lang/String; = "LeProductConfig"

.field public static final UNKNOW:I = -0x1

.field private static final VALID_MODEL:Ljava/lang/String; = "X62"

.field public static final X6M:I = 0x2

.field static final mLetvModelForX6M:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/letv/leui/util/LeProductConfig$1;

    invoke-direct {v0}, Lcom/letv/leui/util/LeProductConfig$1;-><init>()V

    sput-object v0, Lcom/letv/leui/util/LeProductConfig;->mLetvModelForX6M:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCameraInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "filepath"    # Ljava/lang/String;

    .prologue
    .line 62
    const/4 v5, 0x0

    .line 63
    .local v5, "value":Ljava/lang/String;
    const/4 v3, 0x0

    .line 65
    .local v3, "reader":Ljava/io/FileReader;
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .end local v3    # "reader":Ljava/io/FileReader;
    .local v4, "reader":Ljava/io/FileReader;
    const/16 v6, 0xf

    :try_start_1
    new-array v0, v6, [C

    .line 67
    .local v0, "buf":[C
    invoke-virtual {v4, v0}, Ljava/io/FileReader;->read([C)I

    move-result v2

    .line 68
    .local v2, "n":I
    const/4 v6, 0x1

    if-le v2, v6, :cond_0

    .line 69
    const-string v6, "LeProductConfig"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getCameraInfo n="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " buf="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    .line 75
    :cond_0
    if-eqz v4, :cond_3

    .line 77
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    .line 82
    .end local v0    # "buf":[C
    .end local v2    # "n":I
    .end local v4    # "reader":Ljava/io/FileReader;
    .restart local v3    # "reader":Ljava/io/FileReader;
    :cond_1
    :goto_0
    return-object v5

    .line 78
    .end local v3    # "reader":Ljava/io/FileReader;
    .restart local v0    # "buf":[C
    .restart local v2    # "n":I
    .restart local v4    # "reader":Ljava/io/FileReader;
    :catch_0
    move-exception v6

    move-object v3, v4

    .line 79
    .end local v4    # "reader":Ljava/io/FileReader;
    .restart local v3    # "reader":Ljava/io/FileReader;
    goto :goto_0

    .line 72
    .end local v0    # "buf":[C
    .end local v2    # "n":I
    :catch_1
    move-exception v1

    .line 73
    .local v1, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v6, "LeProductConfig"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could NOT read info from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 75
    if-eqz v3, :cond_1

    .line 77
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 78
    :catch_2
    move-exception v6

    goto :goto_0

    .line 75
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_2
    if-eqz v3, :cond_2

    .line 77
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 79
    :cond_2
    :goto_3
    throw v6

    .line 78
    :catch_3
    move-exception v7

    goto :goto_3

    .line 75
    .end local v3    # "reader":Ljava/io/FileReader;
    .restart local v4    # "reader":Ljava/io/FileReader;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/FileReader;
    .restart local v3    # "reader":Ljava/io/FileReader;
    goto :goto_2

    .line 72
    .end local v3    # "reader":Ljava/io/FileReader;
    .restart local v4    # "reader":Ljava/io/FileReader;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/FileReader;
    .restart local v3    # "reader":Ljava/io/FileReader;
    goto :goto_1

    .end local v3    # "reader":Ljava/io/FileReader;
    .restart local v0    # "buf":[C
    .restart local v2    # "n":I
    .restart local v4    # "reader":Ljava/io/FileReader;
    :cond_3
    move-object v3, v4

    .end local v4    # "reader":Ljava/io/FileReader;
    .restart local v3    # "reader":Ljava/io/FileReader;
    goto :goto_0
.end method

.method public static getProductConfigType()I
    .locals 5

    .prologue
    .line 39
    const/4 v1, -0x1

    .line 40
    .local v1, "type":I
    const-string v2, "LeProductConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "model name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    sget-object v2, Lcom/letv/leui/util/LeProductConfig;->mLetvModelForX6M:Ljava/util/Set;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 43
    const/4 v1, 0x2

    .line 58
    .local v0, "info":Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 46
    .end local v0    # "info":Ljava/lang/String;
    :cond_1
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "X62"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 47
    const-string v2, "LeProductConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid model ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " valid model="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "X62"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const/4 v1, -0x1

    goto :goto_0

    .line 50
    :cond_2
    const-string v2, "/sys/class/hwinfo/main_camera/devinfo"

    invoke-static {v2}, Lcom/letv/leui/util/LeProductConfig;->getCameraInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    .restart local v0    # "info":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 52
    const-string v2, "ov16880"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 53
    const/4 v1, 0x0

    goto :goto_0

    .line 54
    :cond_3
    const-string v2, "imx230"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    const/4 v1, 0x1

    goto :goto_0
.end method
