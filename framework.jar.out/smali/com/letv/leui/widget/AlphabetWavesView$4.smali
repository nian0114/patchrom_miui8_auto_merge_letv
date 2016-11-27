.class synthetic Lcom/letv/leui/widget/AlphabetWavesView$4;
.super Ljava/lang/Object;
.source "AlphabetWavesView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/AlphabetWavesView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$letv$leui$widget$AlphabetWavesView$EnvLanguage:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/letv/leui/widget/AlphabetWavesView$EnvLanguage;->values()[Lcom/letv/leui/widget/AlphabetWavesView$EnvLanguage;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/letv/leui/widget/AlphabetWavesView$4;->$SwitchMap$com$letv$leui$widget$AlphabetWavesView$EnvLanguage:[I

    :try_start_0
    sget-object v0, Lcom/letv/leui/widget/AlphabetWavesView$4;->$SwitchMap$com$letv$leui$widget$AlphabetWavesView$EnvLanguage:[I

    sget-object v1, Lcom/letv/leui/widget/AlphabetWavesView$EnvLanguage;->TW:Lcom/letv/leui/widget/AlphabetWavesView$EnvLanguage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/letv/leui/widget/AlphabetWavesView$4;->$SwitchMap$com$letv$leui$widget$AlphabetWavesView$EnvLanguage:[I

    sget-object v1, Lcom/letv/leui/widget/AlphabetWavesView$EnvLanguage;->HK:Lcom/letv/leui/widget/AlphabetWavesView$EnvLanguage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
