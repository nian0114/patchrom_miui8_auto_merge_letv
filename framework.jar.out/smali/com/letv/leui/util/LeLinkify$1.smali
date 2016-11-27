.class final Lcom/letv/leui/util/LeLinkify$1;
.super Ljava/lang/Object;
.source "LeLinkify.java"

# interfaces
.implements Lcom/letv/leui/util/LeLinkify$MatchFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/util/LeLinkify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final acceptMatch(Ljava/lang/CharSequence;II)Z
    .locals 6
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    const/4 v2, 0x0

    if-lez p2, :cond_1

    add-int/lit8 v3, p2, -0x1

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .local v0, "codePoint":I
    # invokes: Lcom/letv/leui/util/LeLinkify;->isWord(I)Z
    invoke-static {v0}, Lcom/letv/leui/util/LeLinkify;->access$000(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .end local v0    # "codePoint":I
    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .local v1, "length":I
    if-ge p3, v1, :cond_2

    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .restart local v0    # "codePoint":I
    # invokes: Lcom/letv/leui/util/LeLinkify;->isWord(I)Z
    invoke-static {v0}, Lcom/letv/leui/util/LeLinkify;->access$000(I)Z

    move-result v3

    if-nez v3, :cond_0

    .end local v0    # "codePoint":I
    :cond_2
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method
