.class Lcom/letv/leui/widget/slide/LeSlidePager$3;
.super Ljava/lang/Object;
.source "LeSlidePager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/slide/LeSlidePager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/slide/LeSlidePager;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/slide/LeSlidePager;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/slide/LeSlidePager$3;->this$0:Lcom/letv/leui/widget/slide/LeSlidePager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager$3;->this$0:Lcom/letv/leui/widget/slide/LeSlidePager;

    const/4 v1, 0x0

    # invokes: Lcom/letv/leui/widget/slide/LeSlidePager;->setScrollState(I)V
    invoke-static {v0, v1}, Lcom/letv/leui/widget/slide/LeSlidePager;->access$000(Lcom/letv/leui/widget/slide/LeSlidePager;I)V

    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager$3;->this$0:Lcom/letv/leui/widget/slide/LeSlidePager;

    invoke-virtual {v0}, Lcom/letv/leui/widget/slide/LeSlidePager;->populate()V

    return-void
.end method
