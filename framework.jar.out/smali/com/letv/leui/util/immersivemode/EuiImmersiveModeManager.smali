.class public Lcom/letv/leui/util/immersivemode/EuiImmersiveModeManager;
.super Ljava/lang/Object;
.source "EuiImmersiveModeManager.java"


# static fields
.field public static final COUNTRY_CHINA:Ljava/lang/String; = "CN"

.field public static final DEBUG:Z

.field public static ENABLE_IMMERSIVE_MODE:Z = false

.field public static final IMMERSIVE_NAVIGATION_BAR:I = 0x1

.field public static final IMMERSIVE_STATUS_BAR:I = 0x0

.field private static final TAG:Ljava/lang/String; = "EuiImmersiveModeManager"


# instance fields
.field private mWindow:Landroid/view/Window;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    const-string v0, "debug.app.immersive"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/letv/leui/util/immersivemode/EuiImmersiveModeManager;->DEBUG:Z

    .line 19
    const-string v0, "enable.app.immersive"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/letv/leui/util/immersivemode/EuiImmersiveModeManager;->ENABLE_IMMERSIVE_MODE:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/Window;Landroid/content/Context;)V
    .locals 3
    .param p1, "window"    # Landroid/view/Window;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/letv/leui/util/immersivemode/EuiImmersiveModeManager;->mWindow:Landroid/view/Window;

    .line 27
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "leui_country_area_region_settings"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, "regionValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 29
    :cond_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/letv/leui/util/immersivemode/EuiImmersiveModeManager;->ENABLE_IMMERSIVE_MODE:Z

    .line 31
    :cond_1
    return-void
.end method

.method private getImmersiveIconClor(I)I
    .locals 6
    .param p1, "immersiveColor"    # I

    .prologue
    .line 72
    const/4 v1, -0x1

    .line 74
    .local v1, "iconColor":I
    :try_start_0
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x1e

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x3b

    add-int/2addr v4, v5

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0xb

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x64
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-double v2, v4

    .line 77
    .local v2, "grayLevel":D
    const-wide v4, 0x406ae00000000000L    # 215.0

    cmpl-double v4, v2, v4

    if-ltz v4, :cond_0

    .line 78
    const/high16 v1, -0x1000000

    .line 85
    .end local v2    # "grayLevel":D
    :goto_0
    return v1

    .line 80
    .restart local v2    # "grayLevel":D
    :cond_0
    const/4 v1, -0x1

    goto :goto_0

    .line 82
    .end local v2    # "grayLevel":D
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static immersiveTypeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 34
    if-nez p0, :cond_0

    .line 35
    const-string v0, "IMMERSIVE_STATUS_BAR"

    .line 39
    :goto_0
    return-object v0

    .line 36
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 37
    const-string v0, "IMMERSIVE_NAVIGATION_BAR"

    goto :goto_0

    .line 39
    :cond_1
    const-string v0, "IMMERSIVE_UNKNOW"

    goto :goto_0
.end method


# virtual methods
.method public updateImmersiveState(Landroid/view/View;ZI)V
    .locals 10
    .param p1, "decorView"    # Landroid/view/View;
    .param p2, "onlyIconColor"    # Z
    .param p3, "type"    # I

    .prologue
    const-wide/16 v8, 0x8

    const/4 v6, 0x1

    .line 44
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 45
    .local v4, "now":J
    const/4 v0, 0x0

    .line 46
    .local v0, "extractType":I
    if-nez p3, :cond_4

    .line 47
    const/4 v0, 0x0

    .line 51
    :cond_0
    :goto_0
    const-string v3, "extractColor"

    invoke-static {v8, v9, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 52
    invoke-static {p1, p2, v0}, Lcom/letv/leui/util/immersivemode/EuiExtractColorUtils;->extractColor(Landroid/view/View;ZI)I

    move-result v1

    .line 53
    .local v1, "immersiveColor":I
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 54
    invoke-direct {p0, v1}, Lcom/letv/leui/util/immersivemode/EuiImmersiveModeManager;->getImmersiveIconClor(I)I

    move-result v2

    .line 55
    .local v2, "immersiveIconClor":I
    if-nez p3, :cond_5

    .line 56
    if-nez p2, :cond_1

    .line 57
    iget-object v3, p0, Lcom/letv/leui/util/immersivemode/EuiImmersiveModeManager;->mWindow:Landroid/view/Window;

    invoke-virtual {v3, v1}, Landroid/view/Window;->setEuiStatusBarColor(I)V

    .line 59
    :cond_1
    iget-object v3, p0, Lcom/letv/leui/util/immersivemode/EuiImmersiveModeManager;->mWindow:Landroid/view/Window;

    invoke-virtual {v3, v2}, Landroid/view/Window;->setStatusBarIconColor(I)V

    .line 64
    :cond_2
    :goto_1
    sget-boolean v3, Lcom/letv/leui/util/immersivemode/EuiImmersiveModeManager;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 65
    const-string v3, "EuiImmersiveModeManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateImmersiveState type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p3}, Lcom/letv/leui/util/immersivemode/EuiImmersiveModeManager;->immersiveTypeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Color="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " IconColor = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " elapse="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_3
    return-void

    .line 48
    .end local v1    # "immersiveColor":I
    .end local v2    # "immersiveIconClor":I
    :cond_4
    if-ne p3, v6, :cond_0

    .line 49
    const/4 v0, 0x1

    goto :goto_0

    .line 60
    .restart local v1    # "immersiveColor":I
    .restart local v2    # "immersiveIconClor":I
    :cond_5
    if-ne p3, v6, :cond_2

    .line 61
    iget-object v3, p0, Lcom/letv/leui/util/immersivemode/EuiImmersiveModeManager;->mWindow:Landroid/view/Window;

    invoke-virtual {v3, v1}, Landroid/view/Window;->setEuiNavigationBarColor(I)V

    goto :goto_1
.end method
