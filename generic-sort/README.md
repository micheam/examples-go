# generic-sort

"sort" パッケージにて提供されているファサード

```go
sort.Slice(slice, func(i, j int) bool {
	return slice[i].ID < slice[j].ID
})
```

## 参考

- golang の sort インタフェース難しい問題が解決した
  https://mattn.kaoriya.net/software/lang/go/20161004092237.htm

- 
