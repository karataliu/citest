package version

import (
	"github.com/stretchr/testify/assert"
	"testing"
)

func TestBasic(t *testing.T) {
	assert.Equal(t, 1, 1) //12
}

func TestConst(t *testing.T) {
	assert.True(t, b1 < 4)
}
