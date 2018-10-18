body = 
  "Morning Gloryが4対2でSunflowerに勝利。\n\n" + 
  "２回表、６番渡辺の二塁打から７番山田、８番高橋の連続タイムリーで２点先制。" +
  "９回表、ランナー一二塁で２番田中の２塁打で２点を挙げ、ダメを押しました。\n\n" +
  "投げては初先発の山本が7回を２失点に抑え、伊藤、中村を繋いで逃げ切りました。"

0.upto(9) do |idx|
	Article.create(
		title: "練習試合の結果#{idx}",
		body: body,
		released_at: 8.days.ago.advance(days: idx),
		expired_at: 2.days.ago.advance(days: idx),
		member_only: (idx % 3 == 0)
	)
end

0.upto(29) do |idx|
  Article.create(
    title: "Article#{idx+10}",
    body: "blah, blah, blah...",
    released_at: 100.days.ago.advance(days: idx),
    expired_at: nil,
    member_only: false
  )
end