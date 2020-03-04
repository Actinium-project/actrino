package actrino

import "errors"

var (
	// ErrGetUtxoCancelled signals that a GetUtxo request was cancelled.
	ErrGetUtxoCancelled = errors.New("get utxo request cancelled")

	// ErrShuttingDown signals that actrino received a shutdown request.
	ErrShuttingDown = errors.New("actrino shutting down")
)
