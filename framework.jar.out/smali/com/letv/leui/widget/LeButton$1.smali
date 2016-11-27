.class synthetic Lcom/letv/leui/widget/LeButton$1;
.super Ljava/lang/Object;
.source "LeButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LeButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$letv$leui$widget$LeButton$DefStyle:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 119
    invoke-static {}, Lcom/letv/leui/widget/LeButton$DefStyle;->values()[Lcom/letv/leui/widget/LeButton$DefStyle;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/letv/leui/widget/LeButton$1;->$SwitchMap$com$letv$leui$widget$LeButton$DefStyle:[I

    :try_start_0
    sget-object v0, Lcom/letv/leui/widget/LeButton$1;->$SwitchMap$com$letv$leui$widget$LeButton$DefStyle:[I

    sget-object v1, Lcom/letv/leui/widget/LeButton$DefStyle;->BLUE_BG:Lcom/letv/leui/widget/LeButton$DefStyle;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lcom/letv/leui/widget/LeButton$1;->$SwitchMap$com$letv$leui$widget$LeButton$DefStyle:[I

    sget-object v1, Lcom/letv/leui/widget/LeButton$DefStyle;->WHITE_BG:Lcom/letv/leui/widget/LeButton$DefStyle;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lcom/letv/leui/widget/LeButton$1;->$SwitchMap$com$letv$leui$widget$LeButton$DefStyle:[I

    sget-object v1, Lcom/letv/leui/widget/LeButton$DefStyle;->WHITE_BG_BLK:Lcom/letv/leui/widget/LeButton$DefStyle;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
