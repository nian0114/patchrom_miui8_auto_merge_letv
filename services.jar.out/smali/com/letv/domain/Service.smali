.class public final enum Lcom/letv/domain/Service;
.super Ljava/lang/Enum;
.source "Service.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/letv/domain/Service;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/letv/domain/Service;

.field public static final enum ACCOUNT:Lcom/letv/domain/Service;

.field public static final enum APIZHIFU:Lcom/letv/domain/Service;

.field public static final enum BROWSER:Lcom/letv/domain/Service;

.field public static final enum CALENDAR:Lcom/letv/domain/Service;

.field public static final enum CONTROL:Lcom/letv/domain/Service;

.field public static final enum DEVICE:Lcom/letv/domain/Service;

.field public static final enum ITV:Lcom/letv/domain/Service;

.field public static final enum LOCK:Lcom/letv/domain/Service;

.field public static final enum MUSIC:Lcom/letv/domain/Service;

.field public static final enum OTA:Lcom/letv/domain/Service;

.field public static final enum PAY:Lcom/letv/domain/Service;

.field public static final enum PUSH:Lcom/letv/domain/Service;

.field public static final enum REMOTE:Lcom/letv/domain/Service;

.field public static final enum SYNC:Lcom/letv/domain/Service;

.field public static final enum USERCENTER:Lcom/letv/domain/Service;

.field public static final enum WALLPAPER:Lcom/letv/domain/Service;

.field public static final enum XFEEDBACK:Lcom/letv/domain/Service;

.field public static final enum XPAGE:Lcom/letv/domain/Service;

.field public static final enum XSQUARE:Lcom/letv/domain/Service;

.field public static final enum YUANXIAN:Lcom/letv/domain/Service;

.field public static final enum ZHIFU:Lcom/letv/domain/Service;


# instance fields
.field private final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 8
    new-instance v0, Lcom/letv/domain/Service;

    const-string v1, "ACCOUNT"

    const-string v2, "account"

    invoke-direct {v0, v1, v4, v2}, Lcom/letv/domain/Service;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/domain/Service;->ACCOUNT:Lcom/letv/domain/Service;

    .line 9
    new-instance v0, Lcom/letv/domain/Service;

    const-string v1, "ITV"

    const-string v2, "itv"

    invoke-direct {v0, v1, v5, v2}, Lcom/letv/domain/Service;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/domain/Service;->ITV:Lcom/letv/domain/Service;

    .line 10
    new-instance v0, Lcom/letv/domain/Service;

    const-string v1, "DEVICE"

    const-string v2, "device"

    invoke-direct {v0, v1, v6, v2}, Lcom/letv/domain/Service;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/domain/Service;->DEVICE:Lcom/letv/domain/Service;

    .line 11
    new-instance v0, Lcom/letv/domain/Service;

    const-string v1, "APIZHIFU"

    const-string v2, "apizhifu"

    invoke-direct {v0, v1, v7, v2}, Lcom/letv/domain/Service;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/domain/Service;->APIZHIFU:Lcom/letv/domain/Service;

    .line 12
    new-instance v0, Lcom/letv/domain/Service;

    const-string v1, "ZHIFU"

    const-string v2, "zhifu"

    invoke-direct {v0, v1, v8, v2}, Lcom/letv/domain/Service;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/domain/Service;->ZHIFU:Lcom/letv/domain/Service;

    .line 13
    new-instance v0, Lcom/letv/domain/Service;

    const-string v1, "YUANXIAN"

    const/4 v2, 0x5

    const-string v3, "yuanxian"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/domain/Service;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/domain/Service;->YUANXIAN:Lcom/letv/domain/Service;

    .line 14
    new-instance v0, Lcom/letv/domain/Service;

    const-string v1, "USERCENTER"

    const/4 v2, 0x6

    const-string v3, "usercenter"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/domain/Service;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/domain/Service;->USERCENTER:Lcom/letv/domain/Service;

    .line 15
    new-instance v0, Lcom/letv/domain/Service;

    const-string v1, "LOCK"

    const/4 v2, 0x7

    const-string v3, "lock"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/domain/Service;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/domain/Service;->LOCK:Lcom/letv/domain/Service;

    .line 16
    new-instance v0, Lcom/letv/domain/Service;

    const-string v1, "BROWSER"

    const/16 v2, 0x8

    const-string v3, "browser"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/domain/Service;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/domain/Service;->BROWSER:Lcom/letv/domain/Service;

    .line 17
    new-instance v0, Lcom/letv/domain/Service;

    const-string v1, "CALENDAR"

    const/16 v2, 0x9

    const-string v3, "calendar"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/domain/Service;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/domain/Service;->CALENDAR:Lcom/letv/domain/Service;

    .line 18
    new-instance v0, Lcom/letv/domain/Service;

    const-string v1, "XSQUARE"

    const/16 v2, 0xa

    const-string v3, "xsquare"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/domain/Service;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/domain/Service;->XSQUARE:Lcom/letv/domain/Service;

    .line 19
    new-instance v0, Lcom/letv/domain/Service;

    const-string v1, "MUSIC"

    const/16 v2, 0xb

    const-string v3, "music"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/domain/Service;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/domain/Service;->MUSIC:Lcom/letv/domain/Service;

    .line 20
    new-instance v0, Lcom/letv/domain/Service;

    const-string v1, "PAY"

    const/16 v2, 0xc

    const-string v3, "pay"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/domain/Service;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/domain/Service;->PAY:Lcom/letv/domain/Service;

    .line 21
    new-instance v0, Lcom/letv/domain/Service;

    const-string v1, "OTA"

    const/16 v2, 0xd

    const-string v3, "ota"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/domain/Service;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/domain/Service;->OTA:Lcom/letv/domain/Service;

    .line 22
    new-instance v0, Lcom/letv/domain/Service;

    const-string v1, "XFEEDBACK"

    const/16 v2, 0xe

    const-string v3, "xfeedback"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/domain/Service;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/domain/Service;->XFEEDBACK:Lcom/letv/domain/Service;

    .line 23
    new-instance v0, Lcom/letv/domain/Service;

    const-string v1, "XPAGE"

    const/16 v2, 0xf

    const-string v3, "xpage"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/domain/Service;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/domain/Service;->XPAGE:Lcom/letv/domain/Service;

    .line 24
    new-instance v0, Lcom/letv/domain/Service;

    const-string v1, "REMOTE"

    const/16 v2, 0x10

    const-string v3, "remote"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/domain/Service;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/domain/Service;->REMOTE:Lcom/letv/domain/Service;

    .line 25
    new-instance v0, Lcom/letv/domain/Service;

    const-string v1, "CONTROL"

    const/16 v2, 0x11

    const-string v3, "control"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/domain/Service;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/domain/Service;->CONTROL:Lcom/letv/domain/Service;

    .line 26
    new-instance v0, Lcom/letv/domain/Service;

    const-string v1, "PUSH"

    const/16 v2, 0x12

    const-string v3, "push"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/domain/Service;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/domain/Service;->PUSH:Lcom/letv/domain/Service;

    .line 27
    new-instance v0, Lcom/letv/domain/Service;

    const-string v1, "SYNC"

    const/16 v2, 0x13

    const-string v3, "sync"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/domain/Service;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/domain/Service;->SYNC:Lcom/letv/domain/Service;

    .line 28
    new-instance v0, Lcom/letv/domain/Service;

    const-string v1, "WALLPAPER"

    const/16 v2, 0x14

    const-string v3, "wallpaper"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/domain/Service;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/domain/Service;->WALLPAPER:Lcom/letv/domain/Service;

    .line 6
    const/16 v0, 0x15

    new-array v0, v0, [Lcom/letv/domain/Service;

    sget-object v1, Lcom/letv/domain/Service;->ACCOUNT:Lcom/letv/domain/Service;

    aput-object v1, v0, v4

    sget-object v1, Lcom/letv/domain/Service;->ITV:Lcom/letv/domain/Service;

    aput-object v1, v0, v5

    sget-object v1, Lcom/letv/domain/Service;->DEVICE:Lcom/letv/domain/Service;

    aput-object v1, v0, v6

    sget-object v1, Lcom/letv/domain/Service;->APIZHIFU:Lcom/letv/domain/Service;

    aput-object v1, v0, v7

    sget-object v1, Lcom/letv/domain/Service;->ZHIFU:Lcom/letv/domain/Service;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/letv/domain/Service;->YUANXIAN:Lcom/letv/domain/Service;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/letv/domain/Service;->USERCENTER:Lcom/letv/domain/Service;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/letv/domain/Service;->LOCK:Lcom/letv/domain/Service;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/letv/domain/Service;->BROWSER:Lcom/letv/domain/Service;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/letv/domain/Service;->CALENDAR:Lcom/letv/domain/Service;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/letv/domain/Service;->XSQUARE:Lcom/letv/domain/Service;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/letv/domain/Service;->MUSIC:Lcom/letv/domain/Service;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/letv/domain/Service;->PAY:Lcom/letv/domain/Service;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/letv/domain/Service;->OTA:Lcom/letv/domain/Service;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/letv/domain/Service;->XFEEDBACK:Lcom/letv/domain/Service;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/letv/domain/Service;->XPAGE:Lcom/letv/domain/Service;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/letv/domain/Service;->REMOTE:Lcom/letv/domain/Service;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/letv/domain/Service;->CONTROL:Lcom/letv/domain/Service;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/letv/domain/Service;->PUSH:Lcom/letv/domain/Service;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/letv/domain/Service;->SYNC:Lcom/letv/domain/Service;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/letv/domain/Service;->WALLPAPER:Lcom/letv/domain/Service;

    aput-object v2, v0, v1

    sput-object v0, Lcom/letv/domain/Service;->$VALUES:[Lcom/letv/domain/Service;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput-object p3, p0, Lcom/letv/domain/Service;->type:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/letv/domain/Service;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/letv/domain/Service;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/letv/domain/Service;

    return-object v0
.end method

.method public static values()[Lcom/letv/domain/Service;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/letv/domain/Service;->$VALUES:[Lcom/letv/domain/Service;

    invoke-virtual {v0}, [Lcom/letv/domain/Service;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/letv/domain/Service;

    return-object v0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/letv/domain/Service;->type:Ljava/lang/String;

    return-object v0
.end method
